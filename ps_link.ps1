
# Get the environment variables
foreach ($line in Get-Content ".env") {
    if ($line -match '^DB_PASSWORD_DEV="?(.*)"?$') { $dbPassword = $matches[1] }
    if ($line -match '^PROJECT_REF_DEV="?(.*)"?$') { $projectRef = $matches[1] }
}

if ($null -eq $dbPassword) { Write-Host "Error: .env file is missing DB_PASSWORD_DEV"; exit 1 }
if ($null -eq $projectRef) { Write-Host "Error: .env file is missing PROJECT_REF_DEV"; exit 1 }

npx supabase link --project-ref $projectRef -p $dbPassword
if (Test-Path "supabase/.temp/gotrue-version") { Remove-Item "supabase/.temp/gotrue-version" -Force }