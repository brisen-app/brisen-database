// Docs: https://github.com/cloudydeno/deno-notion_sdk
import { PageObjectResponse, QueryDatabaseParameters } from 'https://deno.land/x/notion_sdk@v2.2.3/src/api-endpoints.ts'
import { isFullPage, isFullUser } from 'https://deno.land/x/notion_sdk@v2.2.3/src/helpers.ts'
import { Client } from 'https://deno.land/x/notion_sdk@v2.2.3/src/mod.ts'
import { NotionIndex, NotionItem, Status } from './models.ts'

type Filter = QueryDatabaseParameters['filter']

const INDEX_ID = 'debb1582f2f641f29a1eaec1a455943e'
const SYNC_STATUS_KEY = 'sync_status'
const NOTION_SECRET = Deno.env.get('NOTION_SECRET')
if (!NOTION_SECRET) throw new Error('NOTION_SECRET is required!')

const notion = new Client({ auth: NOTION_SECRET })

const NOTION_STATUS_FILTER: Filter = {
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
}

const NOTION_INDEX_FILTER: Filter = {
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
}

async function query(databaseId: string, filter: Filter): Promise<Partial<NotionItem>[]> {
  const response = await notion.databases.query({
    database_id: databaseId,
    filter: filter,
  })

  return response.results.map((result) => {
    if (!isFullPage(result)) throw new TypeError('Not a full page object')
    return toObject(result)
  })
}

export async function fetchItems(databaseId: string) {
  return await query(databaseId, NOTION_STATUS_FILTER)
}

export async function fetchDatabaseIndex() {
  return (await query(INDEX_ID, NOTION_INDEX_FILTER)) as NotionIndex[]
}

function toObject(page: PageObjectResponse): { [key: string]: ReturnType<typeof getValue> } {
  const object: { [key: string]: ReturnType<typeof getValue> } = {}

  object.id = page.id
  object.modified_at = page.last_edited_time
  object.created_at = page.created_time
  if (page.icon?.type === 'emoji') object.icon = page.icon.emoji

  for (const key in page.properties) {
    object[key] = getValue(page.properties[key])
  }
  return object
}

function getValue(property: PageObjectResponse['properties'][string]) {
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
