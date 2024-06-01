// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

import { LogType, NotionIndex, NotionLog, SyncAction } from './models.ts'
import NotionAPI from './notion-api.ts'
import { NotionItem } from './notion-parser.ts'
import { extractRelations, getRelationTable } from './relation-handler.ts'
import Supabase from './supabase-api.ts'

// TODO: Setup cron https://youtu.be/-U6DJcjVvGo?si=NLUtt5fftG65RcwF

const responseInit: ResponseInit = {
  status: 200,
  headers: {
    'Content-Type': 'application/json',
  },
}
const logResponse: NotionLog = {
  title: 'Sync completed',
  timestamp: new Date(),
  exact_time: Date.now(),
  type: LogType.INFO,
}

Deno.serve(async () => {
  const relations: object[] = []

  try {
    const tables = await NotionAPI.fetchDatabaseIndex()
    const lastSync = await NotionAPI.fetchLastSyncDate()

    for (const table of tables) {
      console.log('fetching', table.name)
      const items = await NotionAPI.fetchItems(table.id, lastSync)
      console.log('fetched', items.length, table.name)

      for (const item of items) {
        const itemRelations = await handleItem(table, item)
        relations.push(...itemRelations)
      }
    }

    for (const relation of relations) {
      await handleRelations(relation)
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

async function handleItem(table: NotionIndex, item: NotionItem) {
  const relations: object[] = []
  try {
    switch (item._sync_action) {
      case SyncAction.PUBLISH:
        relations.push(...extractRelations(item))
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
  return relations
}

async function handleRelations(relation: object) {
  try {
    const table = getRelationTable(relation)
    if (!table) return

    await Supabase.pushItem(table, relation)
  } catch (error) {
    if (!(error instanceof Error)) throw error
    console.warn(error.message)
    NotionAPI.logWarning(`Pushing relation failed`, error, relation)
  }
}
