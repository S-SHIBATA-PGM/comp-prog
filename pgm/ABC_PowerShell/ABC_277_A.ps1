$N, $X = [int[]][Console]::ReadLine().Split()
$P = [int[]][Console]::ReadLine().Split()
Write-Host ([Array]::IndexOf($P, $X) + 1)
exit 0