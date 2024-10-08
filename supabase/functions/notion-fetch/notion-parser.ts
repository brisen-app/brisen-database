// Docs: https://github.com/cloudydeno/deno-notion_sdk
import {
  CreatePageBodyParameters,
  DateResponse,
  FormulaPropertyResponse,
  PageObjectResponse,
} from 'https://deno.land/x/notion_sdk@v2.2.3/src/api-endpoints.ts'
import { isFullUser } from 'https://deno.land/x/notion_sdk@v2.2.3/src/helpers.ts'
import { SupabaseItem } from './models.ts'

type CreateNotionProperty = CreatePageBodyParameters['properties']
type RollupProperty = Extract<PageObjectResponse['properties'][string], { type: 'rollup' }>['rollup']
type FilesProperty = Extract<PageObjectResponse['properties'][string], { type: 'files' }>['files']

export type SupabaseAttributeType = Awaited<ReturnType<typeof getValue>>

export function toNotionProperties(item: object): CreateNotionProperty {
  const properties: ReturnType<typeof toNotionProperties> = {}

  for (const key in item) {
    // @ts-expect-error: This is fine
    properties[key] = createNotionProperty(key, item[key])
  }

  return properties
}

export function parse(page: PageObjectResponse) {
  const item: Partial<SupabaseItem> = {
    id: page.id,
    modified_at: page.last_edited_time,
    created_at: page.created_time,
  }

  if (page.icon?.type === 'emoji') item.icon = page.icon.emoji.toString()

  for (const key in page.properties) {
    item[key] = getValue(key, page.properties[key])
  }
  return item as SupabaseItem
}

function _getParentId(page: PageObjectResponse) {
  switch (page.parent.type) {
    case 'database_id':
      return page.parent.database_id
    case 'page_id':
      return page.parent.page_id
    case 'block_id':
      return page.parent.block_id
    default:
      throw new Error('Unsupported parent type: ' + page.parent.type)
  }
}

function createNotionProperty<T>(key: string, value: T): CreateNotionProperty[keyof CreateNotionProperty] {
  switch (key) {
    case 'name':
    case 'title':
      return { title: [{ text: { content: value as string } }] }
    case 'type':
      return { select: { name: value as string } }
  }

  switch (typeof value) {
    case 'string':
      return { rich_text: [{ text: { content: value } }] }
    case 'number':
      return { number: value }
    case 'boolean':
      return { checkbox: value }
    case 'object':
      if (Array.isArray(value)) return { multi_select: value.map((option) => ({ name: option as string })) }
      if (value instanceof Date) return { date: { start: value.toISOString() } }
      break
    default:
  }
  throw new TypeError(`Unsupported value type of key ${key}: ${typeof value}`)
}

function getValue(
  key: string,
  property: PageObjectResponse['properties'][string]
): string | string[] | boolean | number | Date | null {
  switch (property.type) {
    case 'number':
      return property.number
    case 'select':
      return property.select?.name ?? null
    case 'status':
      return property.status?.name ?? null
    case 'multi_select':
      if (property.multi_select.length === 0) return null
      return property.multi_select.map((option) => option.name)
    case 'date':
      return parseDate(property.date)
    case 'files':
      return parseFiles(property.files)
    case 'checkbox':
      return property.checkbox
    case 'url':
      return property.url
    case 'email':
      return property.email
    case 'phone_number':
      return property.phone_number
    case 'formula':
      return parseFormula(property.formula)
    case 'rollup':
      return parseRollup(key, property.rollup)
    case 'created_time':
      return property.created_time
    case 'created_by':
      return isFullUser(property.created_by) ? property.created_by.name : property.created_by.id
    case 'last_edited_time':
      return property.last_edited_time
    case 'last_edited_by':
      return isFullUser(property.last_edited_by) ? property.last_edited_by.name : property.last_edited_by.id
    default:
      return getBaseValue(key, property)
  }
}

function getBaseValue(
  key: string,
  property: Extract<RollupProperty, { type: 'array' }>['array'][number]
): string | string[] | null {
  switch (property.type) {
    case 'title':
      if (property.title.length === 0) return null
      return property.title[0].plain_text
    case 'rich_text':
      if (property.rich_text.length === 0) return null
      return property.rich_text[0].plain_text
    case 'people':
      return property.people.map((person) => (isFullUser(person) ? person.name ?? person.id : person.id))
    case 'relation':
      if (property.relation.length === 0) return null
      if (!key.startsWith('_') && property.relation.length === 1) return property.relation[0].id
      return property.relation.map((relation) => relation.id)
  }
}

function parseFormula(value: FormulaPropertyResponse) {
  switch (value.type) {
    case 'string':
      return value.string
    case 'number':
      return value.number
    case 'boolean':
      return value.boolean
    case 'date':
      return parseDate(value.date)
    default:
      return null
  }
}

function parseRollup(key: string, value: RollupProperty): string | number | Date | null {
  switch (value.type) {
    case 'array':
      return value.array.map((item) => getBaseValue(key, item)).join(', ')
    case 'number':
      return value.number
    case 'date':
      return parseDate(value.date)
    default:
      return null
  }
}

function parseDate(date: DateResponse | null) {
  return date?.start ? new Date(Date.parse(date!.start)) : null
}

function parseFiles(files: FilesProperty): string[] | null {
  const items: string[] = []
  for (const file of files) {
    switch (file.type) {
      case 'external':
        items.push(file.external.url)
        break
      case 'file':
        items.push(file.file.url)
        break
      default:
        continue
    }
  }
  return items
}
