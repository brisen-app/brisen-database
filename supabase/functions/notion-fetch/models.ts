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
  _sync_action: SyncAction
}

export function isNotionCardItem(item: object): item is NotionCardItem {
  return 'parents' in item && 'children' in item && isNotionItem(item)
}

export type CardDependency = {
  parent: string
  child: string
  _sync_action: SyncAction
}

export function isCardDependency(relation: object): relation is CardDependency {
  return 'parent' in relation && 'child' in relation
}

export type CardPackRelation = {
  card: string
  pack: string
  _sync_action: SyncAction
}

export function isCardPackRelation(relation: object): relation is CardPackRelation {
  return 'card' in relation && 'pack' in relation
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
  type: LogType
}
