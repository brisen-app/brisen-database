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

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/notion-sync' \
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/

// For testing:
// npx supabase functions serve --env-file .\supabase\.env.local
