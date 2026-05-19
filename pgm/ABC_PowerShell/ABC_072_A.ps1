$X, $t = [uint32[]][Console]::ReadLine().Split()
Write-Host ($X - [Math]::Min($X, $t))
exit 0