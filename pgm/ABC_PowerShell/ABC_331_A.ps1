$M, $D = [int[]][Console]::ReadLine().Split(" ")
$year, $month, $day = [int[]][Console]::ReadLine().Split(" ")
$day++;
if ($day -gt $D) {
    $day -= $D;
    $month++;
}
if ($month -gt $M) {
    $month -= $M;
    $year++;
}
Write-Host "$year $month $day"
exit 0