# Get branch name
$branchName = git rev-parse --abbrev-ref HEAD
$branchName = $branchName -replace '.*/', ''

# Get the environment variables
foreach ($line in Get-Content ".env") {
    if ($line -match '^DB_PASSWORD_DEV="?(.*)"?$') { $dbPassword = $matches[1] }
    if ($line -match '^PROJECT_REF_DEV="?(.*)"?$') { $projectRef = $matches[1] }
}

if ($null -eq $dbPassword) { Write-Host "Error: .env file is missing DB_PASSWORD_DEV"; exit 1 }
if ($null -eq $projectRef) { Write-Host "Error: .env file is missing PROJECT_REF_DEV"; exit 1 }

try {
    # Link to the development environment
    npx supabase start
    .\ps_link.ps1
    
    # Pull the data
    Write-Output "n" | npx supabase db pull $branchName
    npx supabase db dump --linked --data-only -f supabase/seed.sql
    
} catch {
    exit 1
} finally {
    .\ps_unlink.ps1
}

