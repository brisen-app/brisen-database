# Brisen Database
Repo for maintaining the Brisen supabase codebase. 
- [Supabase Local Dev/CLI Docs](https://supabase.com/docs/guides/cli/local-development)

## Setup
1. Install Node LTS
    - Windows: `winget install -e --id OpenJS.NodeJS.LTS`
    - MacOS: `brew install node`
1. Install Docker
    - Windows: `winget install -e --id Docker.DockerDesktop` (Requires elevation, run in Terminal as admin)
    - MacOS: `brew install --cask docker`
1. Install Deno
    - Windows: `winget install -e --id DenoLand.Deno --scope machine` (Requires elevation, run in Terminal as admin)
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
    ```
    Copy this file to the root of the [`brisen-client`](https://github.com/brisen-app/brisen-client)-repo if you are making changes to the client as well.

## Development workflow
1. Create and checkout a new branch from `develop` with the following naming convention:
    - `feature/<feature-name>`
    - `bugfix/<bug-name>`
1. Run Supabase with the latest database changes
    - Start the instance: `npx supabase start`
    - Load the latest database changes: `npx supabase db reset` (This must be run after every branch switch, merge or rebase)
    - The Supabase UI will be accessible [here](http://localhost:54323)
    - If you get an error, delete the `supabase/.temp` directory and try again
1. Make your changes to the database in the [Supabase Dashboard](https://supabase.com/dashboard/project/tlnldlywflpgvjepxwxz)
    - If you've added test data, add it to the `seed.sql`-file:
        ```bash
        npx supabase db dump --local --data-only -f supabase/seed.sql
        ```
1. When you are done, create a new migration file and commit the changes to the repository.
    ```bash
    npx supabase migrate new <migration-name>
    ```
1. Commit and push changes to the branch
1. Create a pull request with `develop` as the target branch
