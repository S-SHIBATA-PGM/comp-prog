[Console]::ReadLine() > $null
$P = [int[]][Console]::ReadLine().Split(" ")
$max = ($P | Measure-Object -Maximum).Maximum
$cnt = ($P | Where-Object { $_ -eq $max }).Count
$P[0] -ne $max -or ($P[0] -eq $max -and $cnt -gt 1) ? $max - $P[0] + 1 : 0
exit 0