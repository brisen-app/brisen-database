import { LogType, NotionIndex, NotionLog, SupabaseItem, SyncAction } from './models.ts'
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

Deno.serve(async (request) => {
  try {
    const { lastSync } = await request.json()
    const since = Date.parse(lastSync) ?? 0
    console.log('lastSync', new Date(since))

    const tables = await NotionAPI.fetchDatabaseIndex()

    await Promise.all(tables.map((table) => syncTable(table, since)))
    await Promise.all(relations.map(syncRelations))
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

async function syncTable(table: NotionIndex, since: number) {
  console.log('syncing', table.name)
  const supabaseItems = await Supabase.fetchItems(table.name)
  const notionItems = await NotionAPI.fetchItems(table.id)
  const modifiedNotionItems = notionItems.filter((item) => Date.parse(item.modified_at) >= since)
  console.log('Found', modifiedNotionItems.length, 'modified', table.name)

  const toDelete = getItemsToDelete(supabaseItems, notionItems)
  console.log('Found', toDelete.length, 'deleted', table.name)

  await Promise.all(toDelete.map((item) => Supabase.deleteItem(table.name, item)))
  await Promise.all(modifiedNotionItems.map((item) => syncItem(table, item)))
}

async function syncItem(table: NotionIndex, item: NotionItem) {
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
    const message = `Performing '${item._sync_action}' on '${item.id}' failed`
    console.warn(message + ':', error.message)
    NotionAPI.logError(message, error, item)
  }
}

async function syncRelations(relation: object) {
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

function getItemsToDelete(supabaseItems: SupabaseItem[], notionItems: NotionItem[]) {
  const notionIds = new Set(notionItems.map((item) => item.id))
  return supabaseItems.filter((item) => !notionIds.has(item.id))
}
