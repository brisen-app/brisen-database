import { SupabaseAttributeType } from './notion-parser.ts'
import { Database } from './supabase.ts'

export enum SyncAction {
  PUBLISH = 'publish',
  UNPUBLISH = 'unpublish',
  WAIT = 'wait',
}

export enum LogType {
  ERROR = 'error',
  WARN = 'warning',
  INFO = 'info',
}

export type SupabaseTableName = keyof Database['public']['Tables']
export type SupabaseItem = {
  id: string
  _sync_action?: SyncAction
  [key: string]: SupabaseAttributeType | undefined
} & Database['public']['Tables'][SupabaseTableName]['Row']

// deno-lint-ignore no-explicit-any
export function isSupabaseItem(item: any): item is SupabaseItem {
  if (!(item instanceof Object)) return false
  return 'id' in item
}

// deno-lint-ignore no-explicit-any
export function isGuid(value: any): value is string {
  return !!RegExp(/^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$/i).exec(value)
}

export type CardItem = SupabaseItem & {
  _parents: string[]
  _children: string[]
  _packs: string[]
  _sync_action: SyncAction
}

export function isCardItem(item: object): item is CardItem {
  return '_parents' in item && '_children' in item && isSupabaseItem(item)
}

export type PackItem = SupabaseItem & {
  _cards: string[]
  _sync_action: SyncAction
}

export function isPackItem(item: object): item is PackItem {
  return '_cards' in item && isSupabaseItem(item)
}

export type DatabaseIndex = {
  notion: string
  supabase: SupabaseTableName
  enabled: boolean
}

// deno-lint-ignore no-explicit-any
export function isDatabaseIndex(item: any): item is DatabaseIndex {
  if (!(item instanceof Object)) return false
  return 'notion' in item && 'supabase' in item && 'enabled' in item
}

// deno-lint-ignore no-explicit-any
export function isDatabaseIndexList(item: any): item is DatabaseIndex[] {
  if (!(item instanceof Array)) return false
  return item.every(isDatabaseIndex)
}

export type NotionLog = {
  title: string
  timestamp: Date
  duration?: number
  details?: string
  entity?: string
  type: LogType
  exact_time: number
}
