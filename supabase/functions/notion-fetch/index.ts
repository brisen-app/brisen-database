// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

import { LogType, NotionLog, SyncAction } from './models.ts'
import NotionAPI from './notion-api.ts'
import { extractRelations, getRelationTable } from './relation-handler.ts'
import Supabase from './supabase-api.ts'

// TODO: Setup cron https://youtu.be/-U6DJcjVvGo?si=NLUtt5fftG65RcwF

Deno.serve(async () => {
  const relations: object[] = []

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
          relations.concat(extractRelations(item))

          switch (item._sync_action) {
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
          NotionAPI.logError(`Performing '${item._sync_action}' on '${item.id}' failed`, error, item)
        }
      }

      // Handle relations
      for (const relation of relations) {
        try {
          const table = getRelationTable(relation)
          if (!table) continue

          await Supabase.pushItem(table, relation)
        } catch (error) {
          if (!(error instanceof Error)) throw error
          console.warn(error.message)
          NotionAPI.logWarning(`Pushing relation failed`, error, relation)
          throw error
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
