import { CardItem, PackItem, SupabaseItem, isCardItem, isPackItem } from './models.ts'

const CARD_RELATION_TABLE = 'card_dependencies'
const CARD_PACK_RELATION_TABLE = 'card_pack_rel'

export type Relation = CardRelation | CardPackRelation

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

export function extractRelations(item: SupabaseItem) {
  if (isCardItem(item)) return extractCardRelations(item)
  if (isPackItem(item)) return extractPackRelations(item)
  return []
}

export function getRelationTable(relation: object) {
  if (isCardRelation(relation)) return CARD_RELATION_TABLE
  if (isCardPackRelation(relation)) return CARD_PACK_RELATION_TABLE
  return null
}

function extractCardRelations(item: CardItem): Relation[] {
  const parentRelations = (item._parents ?? [])
    .map((parent) => ({
      parent: parent,
      child: item.id,
    }))
    .filter((relation) => relation.parent !== item.id)

  const childRelations = (item._children ?? [])
    .map((child) => ({
      parent: item.id,
      child: child,
    }))
    .filter((relation) => relation.child !== item.id)

  const packRelations = (item._packs ?? []).map((pack) => ({
    card: item.id,
    pack: pack,
  }))

  return [...parentRelations, ...childRelations, ...packRelations]
}

function extractPackRelations(item: PackItem) {
  return (item._cards ?? []).map((card) => ({
    card: card,
    pack: item.id,
  }))
}
