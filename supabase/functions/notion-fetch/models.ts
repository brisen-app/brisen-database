import { NotionItem, isNotionItem } from './notion-parser.ts'

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

export type NotionCardItem = NotionItem & {
  _parents: string[]
  _children: string[]
  _packs: string[]
  _sync_action: SyncAction
}

export function isNotionCardItem(item: object): item is NotionCardItem {
  return '_parents' in item && '_children' in item && isNotionItem(item)
}

export type NotionPackItem = NotionItem & {
  _cards: string[]
  _sync_action: SyncAction
}

export function isNotionPackItem(item: object): item is NotionPackItem {
  return '_cards' in item && isNotionItem(item)
}

export type NotionIndex = {
  id: string
  name: string
  enabled: boolean
}

export function isNotionIndex(index: object): index is NotionIndex {
  return 'id' in index && 'name' in index && 'enabled' in index
}

export type NotionLog = {
  title: string
  timestamp: Date
  duration?: number
  details?: string
  entity?: string
  type: LogType
}
