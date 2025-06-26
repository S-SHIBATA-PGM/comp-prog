$Y = [int][Console]::ReadLine()
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name four -Value 4 -Option Constant
$mod = $Y % $four
$year = $Y - $mod + ($four - $two)
if ($mod -gt $two) {
    $year += $four
}
Write-Host $year
exit 0