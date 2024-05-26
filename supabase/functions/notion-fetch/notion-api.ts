// Docs: https://github.com/cloudydeno/deno-notion_sdk
import {
  CreatePageBodyParameters,
  PageObjectResponse,
  QueryDatabaseParameters,
} from 'https://deno.land/x/notion_sdk@v2.2.3/src/api-endpoints.ts'
import { isFullPage, isFullUser } from 'https://deno.land/x/notion_sdk@v2.2.3/src/helpers.ts'
import { Client } from 'https://deno.land/x/notion_sdk@v2.2.3/src/mod.ts'

type Filter = QueryDatabaseParameters['filter']
type NotionProperty = PageObjectResponse['properties'][string]
type CreateNotionProperty = CreatePageBodyParameters['properties']

const INDEX_ID = 'debb1582f2f641f29a1eaec1a455943e'
const LOGS_ID = '3c80214370c14c77b72e32f510dc4120'

const SYNC_STATUS_KEY = 'sync_status'

const NOTION_SECRET = Deno.env.get('NOTION_SECRET')
if (!NOTION_SECRET) throw new Error('NOTION_SECRET is required!')

const notion = new Client({ auth: NOTION_SECRET })

enum Status {
  NOTHING = 'nothing',

  CREATE = 'create',
  DELETE = 'delete',

  FAILED = 'failed',
  UNPUBLISHED = 'unpublished',
  PUBLISHED = 'published',
}

enum LogType {
  ERROR = 'error',
  WARN = 'warning',
  INFO = 'info',
}

export type NotionItem = {
  id: string
  created_at: string
  modified_at: string
} & {
  [key: string]: ReturnType<typeof getValue>
}

type NotionIndex = {
  id: string
  name: string
  enabled: boolean
}

export type NotionLog = {
  title: string
  timestamp: Date
  duration?: number
  details?: string
  type: LogType
}

async function query(databaseId: string, filter: Filter) {
  const response = await notion.databases.query({
    database_id: databaseId,
    filter: filter,
  })

  return response.results.map((result) => {
    if (!isFullPage(result)) throw new TypeError('Not a full page object')
    return toObject(result)
  })
}

async function fetchItems(databaseId: string, since: Date | null) {
  return (await query(databaseId, {
    and: [
      {
        property: 'modified_at',
        date: {
          after: since?.toISOString() ?? '1970-01-01T00:00:00.000Z',
        },
      },
      {
        or: [
          {
            property: SYNC_STATUS_KEY,
            status: {
              equals: Status.CREATE,
            },
          },
          {
            property: SYNC_STATUS_KEY,
            status: {
              equals: Status.DELETE,
            },
          },
        ],
      },
    ],
  })) as (NotionItem & { sync_status: Status })[]
}

async function fetchDatabaseIndex() {
  return (await query(INDEX_ID, {
    and: [
      {
        property: 'enabled',
        checkbox: {
          equals: true,
        },
      },
      {
        property: 'id',
        rich_text: {
          is_not_empty: true,
        },
      },
    ],
  })) as unknown as NotionIndex[]
}

async function pushItem(databaseId: string, item: Record<string, unknown>) {
  return await notion.pages.create({
    parent: { database_id: databaseId },
    properties: toNotionProperties(item),
  } as CreatePageBodyParameters)
}

async function log(item: NotionLog) {
  return await pushItem(LOGS_ID, item)
}

async function logError(message: string, error?: Error) {
  return await log({
    title: message,
    timestamp: new Date(),
    type: LogType.ERROR,
    details: error?.stack,
  })
}

async function fetchLastSyncDate() {
  const response = await notion.databases.query({
    database_id: LOGS_ID,
    filter: {
      and: [
        {
          property: 'type',
          select: {
            equals: LogType.INFO,
          },
        },
        {
          property: 'duration',
          number: {
            is_not_empty: true,
          },
        },
      ],
    },
    sorts: [
      {
        property: 'timestamp',
        direction: 'descending',
      },
    ],
    page_size: 1,
  })

  if (response.results.length === 0) return null
  if (!isFullPage(response.results[0])) throw new TypeError('getLastSuccessfulSyncDate(): Not a full page object')
  const timestamp = getValue(response.results[0].properties.timestamp) as string | undefined
  if (!timestamp) throw new TypeError('getLastSuccessfulSyncDate(): timestamp property is empty')

  return new Date(timestamp)
}

function toNotionProperties(item: Record<string, unknown>): CreatePageBodyParameters['properties'] {
  const properties: ReturnType<typeof toNotionProperties> = {}

  for (const key in item) {
    if (key === 'created_at' || key === 'modified_at') continue
    // @ts-expect-error: This is fine
    properties[key] = createNotionProperty(key, item[key])
  }

  return properties
}

function toObject(page: PageObjectResponse): NotionItem {
  const item: ReturnType<typeof toObject> = {
    id: page.id,
    modified_at: page.last_edited_time,
    created_at: page.created_time,
  }

  if (page.icon?.type === 'emoji') item.icon = page.icon.emoji.toString()

  for (const key in page.properties) {
    item[key] = getValue(page.properties[key])
  }
  return item
}

function createNotionProperty<T>(key: string, value: T): CreateNotionProperty[keyof CreateNotionProperty] {
  if (key === 'name' || key == 'title') return { title: [{ text: { content: value as string } }] }
  if (key === 'type') return { select: { name: value as string } }

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

function getValue(property: NotionProperty) {
  switch (property.type) {
    case 'title':
      if (property.title.length === 0) return undefined
      return property.title[0].plain_text
    case 'rich_text':
      if (property.rich_text.length === 0) return undefined
      return property.rich_text[0].plain_text
    case 'number':
      return property.number
    case 'select':
      return property.select
    case 'status':
      return property.status?.name
    case 'multi_select':
      return property.multi_select.map((option) => option.name)
    case 'date':
      return property.date?.start
    case 'people':
      return property.people
    case 'files':
      return property.files
    case 'checkbox':
      return property.checkbox
    case 'url':
      return property.url
    case 'email':
      return property.email
    case 'phone_number':
      return property.phone_number
    case 'formula':
      return property.formula
    case 'relation':
      return property.relation.map((relation) => relation.id)
    case 'rollup':
      return property.rollup
    case 'created_time':
      return property.created_time
    case 'created_by':
      if (isFullUser(property.created_by)) return property.created_by.name
      return property.created_by
    case 'last_edited_time':
      return property.last_edited_time
    case 'last_edited_by':
      if (isFullUser(property.last_edited_by)) {
        return property.last_edited_by.name
      }
      return property.last_edited_by
    default:
      throw new TypeError('Unknown property type: ' + property['type'])
  }
}

const Notion = {
  Status,
  LogType,
  fetchItems,
  fetchDatabaseIndex,
  fetchLastSyncDate,
  log,
  logError,
}

export default Notion
