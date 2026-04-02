$A, $B, $C = [int[]][Console]::ReadLine().Split()
Write-Host ([Math]::Min([Math]::Truncate($B / $A), $C))
exit 0