import { LogType, NotionIndex, NotionLog, SyncAction } from './models.ts'
import NotionAPI from './notion-api.ts'
import { NotionItem } from './notion-parser.ts'
import { extractRelations, getRelationTable } from './relation-handler.ts'
import Supabase, { SupabaseItem, SupabaseTableName } from './supabase-api.ts'

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
    const since = new Date(Date.parse(lastSync))
    console.log('lastSync', since)

    const tables = await NotionAPI.fetchDatabaseIndex()

    await Promise.all(
      tables.map((table) => {
        checkTable(table)
        syncTable(table, since)
      })
    )
    await Promise.all(relations.map(syncRelations))
  } catch (error) {
    console.error(error)
    responseInit.status = 500
    logResponse.title = `Internal Sever Error: ${error.message}`
    logResponse.type = LogType.ERROR
    logResponse.details = error.stack
  }

  logResponse.duration = Date.now() - logResponse.timestamp.getTime()
  return new Response(JSON.stringify(logResponse), responseInit)
})

async function syncTable(table: NotionIndex, since: Date | null) {
  console.log('fetching', table.name)
  const items = await NotionAPI.fetchItems(table.id, since)
  console.log('fetched', items.length, table.name)

  Promise.all(items.map((item) => syncItem(table, item)))
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
    console.warn(error.message)
    NotionAPI.logError(`Performing '${item._sync_action}' on '${item.id}' failed`, error, item)
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

async function checkTable(table: NotionIndex) {
  console.log('checking', table.name)
  const supabaseItems = await Supabase.fetchItems(table.name)
  const notionIds = new Set((await NotionAPI.fetchItems(table.id, null)).map((item) => item.id))

  Promise.all(supabaseItems.map((item) => checkItem(table.name, item, notionIds)))
}

async function checkItem(table: SupabaseTableName, item: SupabaseItem, notionItems: Set<string>) {
  if (notionItems.has(item.id)) return

  console.log('deleting', item.id)
  await Supabase.deleteItem(table, item)
}
