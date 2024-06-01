// Docs: https://supabase.com/docs/reference/javascript/introduction
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.6'
import { NotionItem } from './notion-parser.ts'

const SUPABASE_URL = Deno.env.get('SUPABASE_URL')
if (!SUPABASE_URL) throw new Error('SUPABASE_URL is required!')

const SUPABASE_SECRET = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')
if (!SUPABASE_SECRET) throw new Error('SUPABASE_SERVICE_ROLE_KEY is required!')

const supabase = createClient(SUPABASE_URL, SUPABASE_SECRET)

async function pushItem(table: string, item: NotionItem) {
  const response = await supabase.from(table).upsert(getSanitized(item), { ignoreDuplicates: false }).select()

  if (response.error) {
    if (response.error?.code === '23503') return
    throw new Error(
      `upsertItem(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )
  }

  console.log(`pushed: '${item.id}'`)
  return { data: response.data, status: response.count }
}

async function deleteItem(table: string, item: NotionItem) {
  const response = await supabase.from(table).delete().eq('id', item.id)
  if (response.error)
    throw new Error(
      `deleteItem(): ${response.status} ${response.statusText}:\n${JSON.stringify(response.error, null, 2)}`
    )

  console.log(`deleted: '${item.id}'`)
  return { data: response.data, status: response.count }
}

function getSanitized(item: object) {
  const sanitized: { [key: string]: unknown } = {
    ...item,
    sync_action: undefined,
    parents: undefined,
    children: undefined,
  }

  for (const key in sanitized) {
    if (key.startsWith('_')) delete sanitized[key]
  }
  return sanitized
}

const Supabase = { pushItem, deleteItem }

export default Supabase
