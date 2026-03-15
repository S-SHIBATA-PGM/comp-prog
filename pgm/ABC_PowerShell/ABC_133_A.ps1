$N, $A, $B = [int[]][Console]::ReadLine().Split()
Write-Host ([Math]::Min($A * $N, $B))
exit 0