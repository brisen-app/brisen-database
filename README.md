# Brisen Database

Repo for maintaining the Brisen supabase codebase.

- [Supabase Local Dev/CLI Docs](https://supabase.com/docs/guides/cli/local-development)

## Setup

1. Clone this repository and navigate into the directory

   - `git clone https://github.com/brisen-app/brisen-database`
   - `cd brisen-database`

1. Install Node

   - Windows: `winget install -e --id OpenJS.NodeJS.LTS`
   - MacOS: `brew install node`

1. Install Docker

   - Windows: `winget install -e --id Docker.DockerDesktop` _(Requires elevation)_
   - MacOS: `brew install --cask docker`

1. Install Deno

   - Windows: `winget install -e --id DenoLand.Deno --scope machine` _(Requires elevation)_
   - MacOS: `brew install deno`

1. Install Supabase CLI

   - `npm run upgrade`

### Environment Variables

Create a `.env` file in the root of the project and add the following values from the printed output of `npx supabase start`:

```env
EXPO_PUBLIC_SB_URL=http://localhost:54321
EXPO_PUBLIC_SB_ANON=<public_anon_key>
EXPO_PUBLIC_SB_SERVICE_ROLE=<service_role_key>
EXPO_PUBLIC_SB_JWT_SECRET=<jwt_secret>
PROJECT_REF_DEV=tlnldlywflpgvjepxwxz
DB_PASSWORD_DEV=<dev_db_password>
```

Copy this file to the root of the [`brisen-client`](https://github.com/brisen-app/brisen-client)-repo if you are making changes to the client as well.

For edge functions, create a `.env.local` file in the root of the project and add the following values:

```env
NOTION_SECRET=<notion_secret>
```

## Development

1. Run `npm start` to start the local Supabase instance.

1. Make changes in the [Supabase Studio](http://127.0.0.1:54323/) or to the edge functions.

- Start edge function with `npm run serve` and test with Postman using `POST http://localhost:54321/rest/v1/edge/<function_name>`.
- Make sure `env.local` is set up correctly.
