// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Docs: https://supabase.com/docs/reference/javascript/introduction
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.6'
import { fetchDatabaseIndex, fetchItems } from './notion-api.ts'

const SUPABASE_URL = Deno.env.get('SUPABASE_URL')
if (!SUPABASE_URL) throw new Error('SUPABASE_URL is required!')

const SUPABASE_SECRET = Deno.env.get('SUPABASE_ANON_KEY')
if (!SUPABASE_SECRET) throw new Error('SUPABASE_ANON_KEY is required!')

const supabase = createClient(SUPABASE_URL, SUPABASE_SECRET)

// TODO: Setup cron https://youtu.be/-U6DJcjVvGo?si=NLUtt5fftG65RcwF

Deno.serve(async () => {
  const indecies = await fetchDatabaseIndex()

  for (const index of indecies) {
    for (const item of await fetchItems(index.id!)) {
      console.log(item)
    }
  }

  return new Response(JSON.stringify(indecies), { headers: { 'Content-Type': 'application/json' } })
})

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/notion-sync' \
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
