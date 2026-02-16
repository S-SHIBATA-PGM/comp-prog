$S = [Console]::ReadLine()
Set-Variable -Name "SUN" -Value "SUN" -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$dowSUN = [int][DayOfWeek](
    [Enum]::GetNames([DayOfWeek]) |
    Where-Object { $_ -like "$SUN*" } |
    Select-Object -First $one)
$dow = [int][DayOfWeek](
    [Enum]::GetNames([DayOfWeek]) |
    Where-Object { $_ -like "$S*" } |
    Select-Object -First $one)
$daysInWeek = [System.Enum]::GetNames([System.DayOfWeek]).Length
if ($dowSUN - $dow -le $zero) {
    Write-Host ($dowSUN - $dow + $daysInWeek)
}
else {
    Write-Host ($dowSUN - $dow)
}
exit 0