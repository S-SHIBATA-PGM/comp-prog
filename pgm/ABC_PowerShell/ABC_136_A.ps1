$A, $B, $C = [int[]][Console]::ReadLine().Split()
Write-Host ($C - [Math]::Min($A - $B, $C))
exit 0