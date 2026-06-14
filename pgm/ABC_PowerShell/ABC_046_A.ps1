$abc = [uint32[]][Console]::ReadLine().Split()
Write-Host ($abc | Sort-Object -Unique).Count
exit 0