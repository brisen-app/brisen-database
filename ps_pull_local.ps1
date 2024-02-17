$branchName = git rev-parse --abbrev-ref HEAD
$branchName = $branchName -replace '.*/', ''

npx supabase db dump --local --data-only -f supabase/seed.sql
npx supabase migrate new $branchName