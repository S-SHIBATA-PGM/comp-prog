$A, $B = [int32[]][Console]::ReadLine().Split()
Write-Host ([Math]::Max($A + $B, [Math]::Max($A - $B, $A * $B)))
exit 0