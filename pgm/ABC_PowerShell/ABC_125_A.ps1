$A, $B, $T = [int[]][Console]::ReadLine().Split()
Write-Host ($B * [Math]::Truncate($T / $A))
exit 0