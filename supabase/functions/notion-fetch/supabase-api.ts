// Docs: https://supabase.com/docs/reference/javascript/introduction

import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.6'
import { isNotionItem } from './notion-parser.ts'
import { Database } from './supabase.ts'
import { SupabaseItem, SupabaseTableName } from './models.ts'

const SUPABASE_URL = Deno.env.get('SUPABASE_URL')
if (!SUPABASE_URL) throw new Error('SUPABASE_URL is required!')

const SUPABASE_SECRET = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')
if (!SUPABASE_SECRET) throw new Error('SUPABASE_SERVICE_ROLE_KEY is required!')

const supabase = createClient<Database>(SUPABASE_URL, SUPABASE_SECRET)

async function fetchItems(table: SupabaseTableName) {
  const response = await supabase.from(table).select()

  if (response.error) {
    throw new Error(
      `fetchItems(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )
  }

  return response.data as SupabaseItem[]
}

async function pushItem(table: SupabaseTableName, item: object) {
  console.log('pushing', item)

  for (const key in item) {
    const value = item[key]
    if (!isNotionItem(value)) continue
    await pushItem(table, value)
    item[key] = value.id
  }

  console.log('as', item)

  const response = await supabase.from(table).upsert(getSanitized(item), { ignoreDuplicates: false }).select()
  console.log('recieved', response)

  if (response.error) {
    throw new Error(
      `upsertItem(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )
  }

  if (isNotionItem(item)) console.log(`pushed: '${item.id}'`)
  return { data: response.data, status: response.count }
}

async function deleteItem(table: SupabaseTableName, item: { id: string }) {
  const response = await supabase.from(table).delete().eq('id', item.id)
  if (response.error)
    throw new Error(
      `deleteItem(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )

  console.log(`deleted: '${item.id}'`)
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
