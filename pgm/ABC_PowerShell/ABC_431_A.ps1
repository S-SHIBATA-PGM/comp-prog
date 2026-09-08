$H, $B = [uint32[]][Console]::ReadLine().Split()
Write-Host ([Math]::max($H, $B) - $B)
exit 0