$N, $M, $P = [int[]][Console]::ReadLine().Split(" ")
$num = 0
$day = 0
while ($day -lt $N) {
    $day = $M + $num * $P
    if ($day -gt $N) {
        break;
    }
    $num++
}
Write-Host $num
exit 0