$A, $B, $C, $D = [uint32[]][Console]::ReadLine().Split()
Write-Host ([Math]::Max($A * $B, $C * $D))
exit 0