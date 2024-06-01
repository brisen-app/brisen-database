import { NotionCardItem, NotionPackItem, SyncAction, isNotionCardItem, isNotionPackItem } from './models.ts'
import { NotionItem } from './notion-parser.ts'

const CARD_RELATION_TABLE = 'card_dependencies'
const CARD_PACK_RELATION_TABLE = 'card_pack_rel'

export type CardRelation = {
  parent: string
  child: string
}

export function isCardRelation(relation: object): relation is CardRelation {
  return 'parent' in relation && 'child' in relation
}

export type CardPackRelation = {
  card: string
  pack: string
}

export function isCardPackRelation(relation: object): relation is CardPackRelation {
  return 'card' in relation && 'pack' in relation
}

export function extractRelations(item: NotionItem) {
  if (item._sync_action !== SyncAction.PUBLISH) return []
  if (isNotionCardItem(item)) return extractCardRelations(item)
  if (isNotionPackItem(item)) return extractPackRelations(item)
  return []
}

export function getRelationTable(relation: object) {
  if (isCardRelation(relation)) return CARD_RELATION_TABLE
  if (isCardPackRelation(relation)) return CARD_PACK_RELATION_TABLE
  return null
}

function extractCardRelations(item: NotionCardItem) {
  return [
    ...item._parents.map((parent) => ({
      parent: parent,
      child: item.id,
    })),
    ...item._children.map((child) => ({
      parent: item.id,
      child: child,
    })),
    ...item._packs.map((pack) => ({
      card: item.id,
      pack: pack,
    })),
  ]
}

function extractPackRelations(item: NotionPackItem) {
  return item._cards.map((card) => ({
    card: card,
    pack: item.id,
  }))
}
