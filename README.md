# Brisen Database
Repo for maintaining the Brisen supabase codebase. 
- [Supabase Local Dev/CLI Docs](https://supabase.com/docs/guides/cli/getting-started)

## Setup
1. Install Node.js
    - Windows: `winget install -e --id OpenJS.NodeJS.LTS`
    - MacOS: `brew install node`
1. Install Docker
    - Windows: `winget install -e --id Docker.DockerDesktop`
    - MacOS: `brew install --cask docker`
1. Clone this repository and navigate into the directory
    - `git clone https://github.com/brisen-app/brisen-database`
    - `cd brisen-database`
1. Install Supabase CLI
    - `npm install`
1. Link the supabase development environment
```bash
npx supabase link --project-ref tlnldlywflpgvjepxwxz --password <db-password-dev>
```

## Development workflow
1. Make changes to the database in the development environments [Supabase Dashobard](https://supabase.com/dashboard/project/tlnldlywflpgvjepxwxz)
1. Pull the changes to the local database
    - `npx supabase db pull`
1. Commit the changes to the repository, changes will be pushed to production upon merge.

## Pull and push data

This is **only** supposed to be used for development purposes. **Do not** use this in production.

### Pull data
Make sure to only commit relevant changes to the seed.sql file.
```bash
npx supabase db dump --schema public --data-only -f supabase/seed.sql
```

### Push data
This will rebuild the database from the migrations and inserting the seed data.

```bash
npx supabase db reset
```