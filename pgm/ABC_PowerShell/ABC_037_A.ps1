$A, $B, $C = [uint32[]][Console]::ReadLine().Split()
Write-Host ([Math]::Truncate($C / [Math]::Min($A, $B)))
exit 0