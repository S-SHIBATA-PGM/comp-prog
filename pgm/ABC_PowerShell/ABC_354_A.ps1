[int] $H = [Console]::ReadLine()
Set-Variable -Name base -Value 2 -Option Constant
[int] $e = 1
[int] $height = 1
[int] $day = 1
while ($height -le $H) {
    $e *= $base
    $height += $e
    $day++
}
Write-Host $day
exit 0