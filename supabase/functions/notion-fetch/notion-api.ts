// Docs: https://github.com/cloudydeno/deno-notion_sdk
import {
  CreatePageBodyParameters,
  PageObjectResponse,
  QueryDatabaseParameters,
} from 'https://deno.land/x/notion_sdk@v2.2.3/src/api-endpoints.ts'
import { Client } from 'https://deno.land/x/notion_sdk@v2.2.3/src/mod.ts'
import { LogType, DatabaseIndex, NotionLog, SyncAction, isDatabaseIndexList } from './models.ts'
import { parse, toNotionProperties } from './notion-parser.ts'
import { isFullPage } from 'https://deno.land/x/notion_sdk@v2.2.3/src/helpers.ts'

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
  private static queryCache: Map<string, PageObjectResponse[]> = new Map()

  private static async query(
    table: string,
    filter: QueryDatabaseParameters['filter'] = undefined,
    sorts: QueryDatabaseParameters['sorts'] = undefined,
    page_size = 100,
    tries = 10
  ) {
    const cacheKey = JSON.stringify([table, filter, sorts])

    if (NotionAPI.queryCache.has(cacheKey)) {
      console.log('notion query on', table, 'fetched from cache')
      return NotionAPI.queryCache.get(cacheKey)!
    }

    const results: PageObjectResponse[] = []
    let cursor: string | null | undefined = undefined

    while (cursor !== null) {
      try {
        const start = Date.now()

        const response = await notion.databases.query({
          database_id: table,
          filter: filter,
          sorts: sorts,
          page_size: page_size,
          start_cursor: cursor,
        })

        const duration = (Date.now() - start) / 1000
        if (duration > 1000) console.log(`Slow query on '${table}':`, duration, 'sec')

        for (const item of response.results) {
          if (isFullPage(item)) results.push(item)
        }

        cursor = response.next_cursor
      } catch (error) {
        console.error('Error fetching database:', error)
        if (tries <= 0) throw error
        console.log('Retrying in 5 seconds...')
        await new Promise((resolve) => setTimeout(resolve, 5000))
        tries--
      }
    }

    return results
  }

  static async fetchItems(table: string, since: Date | undefined = undefined) {
    const results = await NotionAPI.query(table, {
      and: [
        {
          property: 'modified_at',
          date: {
            after: since?.toISOString() ?? '1970-01-01T00:00:00.000Z',
          },
        },
        {
          property: '_sync_action',
          status: {
            does_not_equal: SyncAction.WAIT,
          },
        },
      ],
    })

    return results.map(parse)
  }

  static async fetchItem(id: string) {
    const start = Date.now()
    const response = await notion.pages.retrieve({
      page_id: id,
    })

    const duration = (Date.now() - start) / 1000
    if (duration > 1000) console.log(`Slow to fetch '${response.id}':`, duration, 'ms')

    if (!isFullPage(response)) throw new Error('Invalid page response')
    return parse(response)
  }

  static async fetchDatabaseIndex(): Promise<DatabaseIndex[]> {
    const response = await NotionAPI.query(DatabaseIdentifier.INDEX_ID, {
      property: 'supabase',
      rich_text: {
        is_not_empty: true,
      },
    })
    const parsed = response.map(parse)
    if (!isDatabaseIndexList(parsed)) throw new Error(`Invalid database index response: ${response}`)
    return parsed
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

  static async logError(message: string, error?: Error, entity?: object) {
    return await NotionAPI.log({
      title: message,
      timestamp: new Date(),
      exact_time: Date.now(),
      type: LogType.ERROR,
      details: error?.stack,
      entity: JSON.stringify(entity, null, 2),
    })
  }

  static async logWarning(message: string, error?: Error, entity?: object) {
    return await NotionAPI.log({
      title: message,
      timestamp: new Date(),
      exact_time: Date.now(),
      type: LogType.WARN,
      details: error?.stack,
      entity: JSON.stringify(entity, null, 2),
    })
  }
}
