# Brisen Database
Repo for maintaining the Brisen supabase codebase. 
- [Supabase Local Dev/CLI Docs](https://supabase.com/docs/guides/cli/local-development)

## Development
1. Make your changes to the database in the [Supabase Dashboard](https://supabase.com/dashboard/project/tlnldlywflpgvjepxwxz).

1. For each new release, run the [Create Release](https://github.com/brisen-app/brisen-database/actions/workflows/create-release.yaml) GitHub Action from `main` branch to create a new release branch and PR.
    - Any changes to edge functions must be merged into this release branch before it is merged into `main`.
    - Use `npx supabase migration up` to apply any new migrations to the local database.

### Edge function development workflow
1. Create a new release branch as described in Development, step 1.
    1. Create a new branch from the release branch to work on edge functions.
1. Add environment variables in an `.env.local` file in the root of the project.
    ```env
    MY_SECRET=<secret_0123456789>
    ```
1. Run supabase locally with
    ```bash
    npx supabase start
    ```
1. Run the edge function locally with
    ```bash
    npx supabase functions serve --no-verify-jwt --env-file .\supabase\.env.local
    ```
1. Update your local Supabase instance with the changes from the release branch.
    ```bash
    npx supabase migration up
    ```
1. Make your changes to the edge function in the `supabase/functions` directory.
1. Test your changes by calling the edge function with Postman.
    ```http
    POST http://localhost:54321/rest/v1/edge/<function_name>
    ```
1. Merge the edge function changes into the release branch and complete the release PR.

## Setup
1. Install Node LTS
    - Windows: `winget install -e --id OpenJS.NodeJS.LTS`
    - MacOS: `brew install node`
1. Install Docker
    - Windows: `winget install -e --id Docker.DockerDesktop` (Requires elevation, run in Terminal as admin)
    - MacOS: `brew install --cask docker`
1. Install Deno
    - Windows: `winget install -e --id DenoLand.Deno --scope machine` (Requires elevation, run in Terminal as admin)
    - MacOS: `brew install deno`
1. Clone this repository and navigate into the directory
    - `git clone https://github.com/brisen-app/brisen-database`
    - `cd brisen-database`
1. Install Supabase CLI
    - `npm install`
1. Run Supabase
    - Make sure Docker is running
    - `npx supabase start` 
    - The Supabase UI will be accessible [here](http://localhost:54323)
1. Create a `.env` file in the root of the project and add the following values from the printed output of `npx supabase start`:
    ```env
    EXPO_PUBLIC_SB_URL=http://localhost:54321
    EXPO_PUBLIC_SB_ANON=<public_anon_key>
    EXPO_PUBLIC_SB_SERVICE_ROLE=<service_role_key>
    EXPO_PUBLIC_SB_JWT_SECRET=<jwt_secret>
    PROJECT_REF_DEV=tlnldlywflpgvjepxwxz
    DB_PASSWORD_DEV=<dev_db_password>
    ```
    Copy this file to the root of the [`brisen-client`](https://github.com/brisen-app/brisen-client)-repo if you are making changes to the client as well.
