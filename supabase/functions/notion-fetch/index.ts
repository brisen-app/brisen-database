// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

import Notion, { NotionLog } from './notion-api.ts'
import Supabase from './supabase-api.ts'

// TODO: Setup cron https://youtu.be/-U6DJcjVvGo?si=NLUtt5fftG65RcwF

Deno.serve(async () => {
  const responseInit: ResponseInit = {
    status: 200,
    headers: {
      'Content-Type': 'application/json',
    },
  }
  const logResponse: NotionLog = {
    title: 'Sync completed',
    timestamp: new Date(),
    type: Notion.LogType.INFO,
  }

  try {
    const tables = await Notion.fetchDatabaseIndex()
    const lastSync = await Notion.fetchLastSyncDate()
    console.log('Last sync:', lastSync)

    for (const table of tables) {
      console.log('fetching', table.name)
      const items = await Notion.fetchItems(table, lastSync)
      console.log('fetched', items.length, table.name)

      for (const item of items) {
        try {
          switch (item.sync_action) {
            case Notion.SyncAction.PUBLISH:
              await Supabase.pushItem(table.name, item)
              break
            case Notion.SyncAction.UNPUBLISH:
              await Supabase.deleteItem(table.name, item)
              break
            default:
          }
        } catch (error) {
          if (!(error instanceof Error)) throw error
          console.warn(error.message)
          Notion.logError(`Performing '${item.sync_action}' on '${item.id}' failed`, error)
        }
      }
    }
  } catch (error) {
    console.error(error)
    responseInit.status = 500
    logResponse.title = `Internal Sever Error: ${error.message}`
    logResponse.type = Notion.LogType.ERROR
    logResponse.details = error.stack
  }

  logResponse.duration = Date.now() - logResponse.timestamp.getTime()
  Notion.log(logResponse)
  return new Response(JSON.stringify(logResponse), responseInit)
})
