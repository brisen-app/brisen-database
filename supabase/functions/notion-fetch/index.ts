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

    for (const table of tables) {
      console.log('fetching:', table.name)
      const items = await Notion.fetchItems(table.id)
      console.log('fetched:', items.length, table.name, 'from Notion')

      for (const item of items) {
        try {
          await Supabase.pushItem(table.name, item)
        } catch (error) {
          if (!(error instanceof Error)) continue
          console.warn(error.message)
          Notion.logError(`Performing '${item.sync_status}' on '${item.id}' failed`, error)
        }
      }
    }
  } catch (error) {
    console.error(error)
    responseInit.status = 500
    logResponse.title = `Internal Sever Error: ${error.message}`
    logResponse.type = Notion.LogType.ERROR
  }

  logResponse.duration = Date.now() - logResponse.timestamp.getTime()
  Notion.log(logResponse)
  return new Response(JSON.stringify(logResponse), responseInit)
})
