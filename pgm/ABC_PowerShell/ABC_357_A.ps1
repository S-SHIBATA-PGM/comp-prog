[int] $N, [int] $M = [Console]::ReadLine().Split(" ")
[int[]] $H = [Console]::ReadLine().Split(" ")
[int] $ans = 0
[int] $sum = 0
foreach ($num in $H) {
    $sum += $num
    if ($sum -gt $M) {
        break
    }
    $ans++
}
Write-Host $ans
exit 0