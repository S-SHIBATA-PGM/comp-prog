$A, $B = [int[]][Console]::ReadLine().Split()
Write-Host (($A + $B), ($A - $B), ($A * $B) | Measure-Object -Maximum).Maximum
exit 0