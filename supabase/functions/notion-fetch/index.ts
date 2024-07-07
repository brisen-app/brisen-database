import { LogType, DatabaseIndex, NotionLog, SupabaseItem, SyncAction } from './models.ts'
import NotionAPI from './notion-api.ts'
import { Relation, extractRelations, getRelationTable } from './relation-handler.ts'
import Supabase from './supabase-api.ts'

const relations: Relation[] = []

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

Deno.serve(async (request) => {
  try {
    const { lastSync } = await request.json()
    const since = new Date(Date.parse(lastSync) ?? 0)
    console.log('lastSync', since)

    const tables = await NotionAPI.fetchDatabaseIndex()

    await Promise.all(tables.map((table) => syncTable(table, since)))
    await Promise.all(relations.map(syncRelations))
    console.log(logResponse.title, 'in', (Date.now() - logResponse.timestamp.getTime()) / 1000, 'sec')
  } catch (error) {
    console.error('Internal Server Error', error)
    responseInit.status = 500
    logResponse.title = `Internal Sever Error: ${error.message}`
    logResponse.type = LogType.ERROR
    logResponse.details = error.stack
  }

  logResponse.duration = Date.now() - logResponse.timestamp.getTime()
  return new Response(JSON.stringify(logResponse), responseInit)
})

async function syncTable(table: DatabaseIndex, since: Date) {
  if (!table.enabled) return
  console.log('syncing', table.supabase)
  const supabaseItems = await Supabase.fetchItems(table.supabase)
  const notionItems = await NotionAPI.fetchItems(table.notion)
  const modifiedNotionItems = notionItems.filter((item) => Date.parse(item.modified_at) >= since.getTime())
  console.log('Found', modifiedNotionItems.length, 'modified', table.supabase)

  const toDelete = getItemsToDelete(supabaseItems, notionItems)
  console.log('Found', toDelete.length, 'deleted', table.supabase)

  await Promise.all(toDelete.map((item) => Supabase.deleteItem(table.supabase, item)))
  await Promise.all(modifiedNotionItems.map((item) => syncItem(table, item)))
}

async function syncItem(table: DatabaseIndex, item: SupabaseItem) {
  try {
    switch (item._sync_action) {
      case SyncAction.PUBLISH:
        relations.push(...extractRelations(item))
        return await Supabase.pushItem(table.supabase, item)
      case SyncAction.UNPUBLISH:
        return await Supabase.deleteItem(table.supabase, item)
      default:
        throw new Error('Unsupported sync action: ' + item._sync_action)
    }
  } catch (error) {
    if (!(error instanceof Error)) throw error
    const message = `Performing '${item._sync_action}' on '${item.id}' failed`
    console.warn(message + ':', error.message)
    NotionAPI.logError(message, error, item)
  }
}

async function syncRelations(relation: Relation) {
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

function getItemsToDelete(supabaseItems: SupabaseItem[], notionItems: SupabaseItem[]) {
  const notionIds = new Set(notionItems.map((item) => item.id))
  return supabaseItems.filter((item) => !notionIds.has(item.id))
}
