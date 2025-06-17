[Console]::ReadLine() > $null
$A = [int[]][Console]::ReadLine().Split()
Write-Host ($A | Measure-Object -Sum).Sum
exit 0