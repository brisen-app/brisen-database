// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

import { LogType, NotionCardItem, NotionLog, SyncAction, isNotionCardItem } from './models.ts'
import NotionAPI from './notion-api.ts'
import Supabase from './supabase-api.ts'

// TODO: Setup cron https://youtu.be/-U6DJcjVvGo?si=NLUtt5fftG65RcwF

Deno.serve(async () => {
  const relations = []

  const responseInit: ResponseInit = {
    status: 200,
    headers: {
      'Content-Type': 'application/json',
    },
  }
  const logResponse: NotionLog = {
    title: 'Sync completed',
    timestamp: new Date(),
    type: LogType.INFO,
  }

  try {
    const tables = await NotionAPI.fetchDatabaseIndex()
    const lastSync = await NotionAPI.fetchLastSyncDate()

    for (const table of tables) {
      console.log('fetching', table.name)
      const items = await NotionAPI.fetchItems(table.id, lastSync)
      console.log('fetched', items.length, table.name)

      // Handle items
      for (const item of items) {
        try {
          if (isNotionCardItem(item)) relations.push(...extractCardRelations(item))

          switch (item.sync_action) {
            case SyncAction.PUBLISH:
              await Supabase.pushItem(table.name, item)
              break
            case SyncAction.UNPUBLISH:
              await Supabase.deleteItem(table.name, item)
              break
            default:
          }
        } catch (error) {
          if (!(error instanceof Error)) throw error
          console.warn(error.message)
          NotionAPI.logError(`Performing '${item.sync_action}' on '${item.id}' failed`, error)
        }
      }

      // Handle relations
      for (const relation of relations) {
        let table = null
        if (relation.child !== null) table = 'card_dependencies'
        if (table === null) continue

        try {
          if (relation.sync_action !== SyncAction.PUBLISH) continue
          await Supabase.pushItem(table, relation)
        } catch (error) {
          if (!(error instanceof Error)) throw error
          console.warn(error.message)
          NotionAPI.logWarning(`Pushing relation '${relation.child}' failed`, error)
        }
      }
    }
  } catch (error) {
    console.error(error)
    responseInit.status = 500
    logResponse.title = `Internal Sever Error: ${error.message}`
    logResponse.type = LogType.ERROR
    logResponse.details = error.stack
  }

  logResponse.duration = Date.now() - logResponse.timestamp.getTime()
  NotionAPI.log(logResponse)
  return new Response(JSON.stringify(logResponse), responseInit)
})

function extractCardRelations(item: NotionCardItem) {
  const relations = []

  for (const parent of item.parents) {
    relations.push({
      parent: parent,
      child: item.id,
      sync_action: item.sync_action,
    })
  }

  for (const child of item.children) {
    relations.push({
      parent: item.id,
      child: child,
      sync_action: item.sync_action,
    })
  }

  return relations
}
