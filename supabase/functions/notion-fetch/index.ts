// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

import { LogStatus, NotionLogItem } from './models.ts'
import Notion from './notion-api.ts'
import { pushItem } from './supabase-api.ts'

// TODO: Setup cron https://youtu.be/-U6DJcjVvGo?si=NLUtt5fftG65RcwF

Deno.serve(async () => {
  const responseInit: ResponseInit = {
    status: 200,
    headers: {
      'Content-Type': 'application/json',
    },
  }
  const logResponse: NotionLogItem = {
    title: 'Sync completed',
    timestamp: new Date(),
    duration: 0,
    type: LogStatus.INFO,
  }

  try {
    const tables = await Notion.fetchDatabaseIndex()

    for (const table of tables) {
      console.log('fetching:', table.name)
      const items = await Notion.fetchItems(table.id)
      console.log('successully fetched:', items.length, table.name, 'from Notion')

      for (const item of items) {
        await pushItem(table.name, item)
      }
    }
  } catch (error) {
    console.error(error)
    responseInit.status = 500
    logResponse.title = `Sync failed: ${error.message}`
    logResponse.type = LogStatus.ERROR
  }

  logResponse.duration = Date.now() - logResponse.timestamp.getTime()
  Notion.log(logResponse)
  return new Response(JSON.stringify(logResponse), responseInit)
})
