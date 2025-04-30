[Console]::ReadLine() > $null
[int[]][Console]::ReadLine().Split(" ") | ForEach-Object -Begin {
    $sum = 0
    $sum > $null
} -Process {
    $sum += $_
    $sum > $null
} -End {
    $sum > $null
}
Write-Host (-$sum)
exit 0