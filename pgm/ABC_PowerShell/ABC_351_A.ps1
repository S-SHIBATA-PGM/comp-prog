$A = ([int[]][Console]::ReadLine().Split(" ") | Measure-Object -Sum).Sum
$B = ([int[]][Console]::ReadLine().Split(" ") | Measure-Object -Sum).Sum
Write-Host ($A - $B + 1)
exit 0