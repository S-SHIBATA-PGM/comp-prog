$N, $M = [int[]][Console]::ReadLine().Split(" ")
$A = [int[]][Console]::ReadLine().Split(" ")
$sum = 0
[int[]][Console]::ReadLine().Split(" ") | ForEach-Object {
    $sum += $A[$_ - 1]
}
Write-Host $sum
exit 0