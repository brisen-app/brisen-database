// Docs: https://supabase.com/docs/reference/javascript/introduction

import { PostgrestError, createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.6'
import { Database } from './supabase.ts'
import { SupabaseItem, SupabaseTableName } from './models.ts'
import NotionAPI from './notion-api.ts'
import { SupabaseAttributeType } from './notion-parser.ts'

const SUPABASE_URL = Deno.env.get('SUPABASE_URL')
if (!SUPABASE_URL) throw new Error('SUPABASE_URL is required!')

const SUPABASE_SECRET = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')
if (!SUPABASE_SECRET) throw new Error('SUPABASE_SERVICE_ROLE_KEY is required!')

const supabase = createClient<Database>(SUPABASE_URL, SUPABASE_SECRET)

async function fetchItems(table: SupabaseTableName) {
  const start = Date.now()
  const response = await supabase.from(table).select()

  const duration = (Date.now() - start) / 1000
  if (duration > 1) console.log(`Slow query on ${table}:`, duration, 'sec')

  if (response.error) {
    throw new Error(
      `fetchItems(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )
  }

  return response.data as SupabaseItem[]
}

async function pushItem(
  table: string,
  item: { [key: string]: SupabaseAttributeType | undefined },
  tries = 3
): Promise<void> {
  const start = Date.now()
  const response = await supabase.from(table).upsert(getSanitized(item), { ignoreDuplicates: false }).select()

  const duration = (Date.now() - start) / 1000
  if (duration > 1) console.log(`Slow query on ${table}:`, duration, 'sec')

  if (response.error) {
    if (response.status == 0 && tries > 0) {
      return await pushItem(table, item, tries - 1)
    }
    if (response.error?.code == '23503') return handleItemNotPresent(table, item, response.error)

    throw new Error(
      `pushItem(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )
  }
}

async function handleItemNotPresent(
  index: string,
  item: { [key: string]: SupabaseAttributeType | undefined },
  error: PostgrestError
) {
  const key = RegExp(/Key \(([^)]+)\)/).exec(error.details)?.[1]
  const table = RegExp(/table "(.*?)"/).exec(error.details)?.[1]
  if (!key || !table) throw error

  const id = item[key] as string
  const relatedItem = await NotionAPI.fetchItem(id)
  if (!relatedItem) throw new Error(`Related item '${id}' not found`)
  if (relatedItem._sync_action !== 'publish') {
    console.warn(`Related item '${id}' is not published, skipping`)
    return
  }

  item[key] = relatedItem.id
  await pushItem(table, relatedItem)
  return await pushItem(index, item)
}

async function deleteItem(table: string, item: { id: string }) {
  const start = Date.now()
  const response = await supabase.from(table).delete().eq('id', item.id)

  const duration = (Date.now() - start) / 1000
  if (duration > 1) console.log(`Slow delete on ${table}:`, duration, 'sec')

  if (response.error)
    throw new Error(
      `deleteItem(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )

  return { data: response.data, status: response.count }
}

function getSanitized(item: object) {
  const sanitized: { [key: string]: unknown } = { ...item }

  for (const key in sanitized) {
    if (key.startsWith('_')) delete sanitized[key]
  }
  return sanitized
}

const Supabase = { pushItem, deleteItem, fetchItems }

export default Supabase
