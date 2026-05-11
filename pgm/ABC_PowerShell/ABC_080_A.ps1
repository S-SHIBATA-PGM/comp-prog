$N, $A, $B = [uint32[]][Console]::ReadLine().Split()
Write-Host ([Math]::Min($A * $N, $B))
exit 0