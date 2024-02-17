
$foldersToDelete = Get-ChildItem -Path "supabase" -Directory -Force | Where-Object { $_.Name -like ".*" }

# Loop through each folder and remove it
foreach ($folder in $foldersToDelete) {
    Remove-Item -Path $folder.FullName -Recurse -Force
}
Write-Host "Unlinked from the development environment"