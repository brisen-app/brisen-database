import { LogType, NotionIndex, NotionLog, SyncAction } from './models.ts'
import NotionAPI from './notion-api.ts'
import { NotionItem } from './notion-parser.ts'
import { extractRelations, getRelationTable } from './relation-handler.ts'
import Supabase from './supabase-api.ts'

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
  exact_time: Date.now(),
  type: LogType.INFO,
}

Deno.serve(async () => {
  try {
    const tables = await NotionAPI.fetchDatabaseIndex()
    const lastSync = await NotionAPI.fetchLastSyncDate()

    await Promise.all(tables.map((table) => handleTable(table, lastSync)))
    await Promise.all(relations.map(handleRelations))
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

async function handleTable(table: NotionIndex, lastSync: Date | null) {
  console.log('fetching', table.name)
  const items = await NotionAPI.fetchItems(table.id, lastSync)
  console.log('fetched', items.length, table.name)

  Promise.all(items.map((item) => handleItem(table, item)))
}

async function handleItem(table: NotionIndex, item: NotionItem) {
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
