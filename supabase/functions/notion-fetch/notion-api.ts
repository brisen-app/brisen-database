// Docs: https://github.com/cloudydeno/deno-notion_sdk
import {
  CreatePageBodyParameters,
  QueryDatabaseParameters,
} from 'https://deno.land/x/notion_sdk@v2.2.3/src/api-endpoints.ts'
import { Client } from 'https://deno.land/x/notion_sdk@v2.2.3/src/mod.ts'
import { LogType, NotionIndex, NotionLog, SyncAction } from './models.ts'
import { toNotionItem, toNotionProperties } from './notion-parser.ts'

// Database ids
enum DatabaseIdentifier {
  INDEX_ID = 'debb1582f2f641f29a1eaec1a455943e',
  LOGS_ID = '3c80214370c14c77b72e32f510dc4120',
}

// Initialize Notion client
const NOTION_SECRET = Deno.env.get('NOTION_SECRET')
if (!NOTION_SECRET) throw new Error('NOTION_SECRET is required!')
const notion = new Client({ auth: NOTION_SECRET })

export default class NotionAPI {
  private static async query(
    databaseId: string,
    filter: QueryDatabaseParameters['filter'] = undefined,
    sorts: QueryDatabaseParameters['sorts'] = undefined,
    page_size = 100
  ) {
    const response = await notion.databases.query({
      database_id: databaseId,
      filter: filter,
      sorts: sorts,
      page_size: page_size,
    })

    return response.results.map((result) => toNotionItem(result))
  }

  static async fetchItems(databaseId: string, since: Date | null) {
    return await NotionAPI.query(databaseId, {
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
              property: '_sync_action',
              status: {
                equals: SyncAction.PUBLISH,
              },
            },
            {
              property: '_sync_action',
              status: {
                equals: SyncAction.UNPUBLISH,
              },
            },
          ],
        },
      ],
    })
  }

  static async fetchDatabaseIndex() {
    return (await NotionAPI.query(DatabaseIdentifier.INDEX_ID, {
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

  static async fetchLastSyncDate() {
    const results = (await NotionAPI.query(
      DatabaseIdentifier.LOGS_ID,
      {
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
      [
        {
          property: 'timestamp',
          direction: 'descending',
        },
      ],
      1
    )) as unknown as NotionLog[]

    if (results.length === 0) return null
    const lastSync = new Date(results[0].timestamp)
    console.log('Last sync:', lastSync)
    return lastSync
  }

  static async pushItem(databaseId: string, item: object) {
    return await notion.pages.create({
      parent: { database_id: databaseId },
      properties: toNotionProperties(item),
    } as CreatePageBodyParameters)
  }

  static async log(item: NotionLog) {
    return await NotionAPI.pushItem(DatabaseIdentifier.LOGS_ID, item)
  }

  static async logError(message: string, error?: Error) {
    return await NotionAPI.log({
      title: message,
      timestamp: new Date(),
      type: LogType.ERROR,
      details: error?.stack,
    })
  }

  static async logWarning(message: string, error?: Error) {
    return await NotionAPI.log({
      title: message,
      timestamp: new Date(),
      type: LogType.WARN,
      details: error?.stack,
    })
  }
}
