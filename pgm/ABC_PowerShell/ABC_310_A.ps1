$N, $P, $Q = [int[]][Console]::ReadLine().Split(" ")
$price = $Q + ([int[]][Console]::ReadLine().Split(" ") |
    Measure-Object -Minimum).Minimum
Write-Host ($P -lt $price ? $P : $price)
exit 0