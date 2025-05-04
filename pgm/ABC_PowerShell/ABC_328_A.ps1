$N, $X = [int[]][Console]::ReadLine().Split(" ")
([int[]][Console]::ReadLine().Split(" ") |
Where-Object { $_ -le $X } |
Measure-Object -Sum).Sum
exit 0