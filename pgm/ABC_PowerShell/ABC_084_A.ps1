$M = [int][Console]::ReadLine()
Set-Variable -Name "y1" -value ([uint32]1) -Option Constant
Set-Variable -Name "mth1" -value ([uint32]1) -Option Constant
Set-Variable -Name "mth12" -value ([uint32]12) -Option Constant
Set-Variable -Name "d1" -value ([uint32]1) -Option Constant
Set-Variable -Name "d30" -value ([uint32]30) -Option Constant
Set-Variable -Name "h0" -value ([uint32]0) -Option Constant
Set-Variable -Name "mnt0" -value ([uint32]0) -Option Constant
Set-Variable -Name "s0" -value ([uint32]0) -Option Constant
$y = (Get-Date).Year
$splat = @{
    Year   = $y
    Month  = $mth12
    Day    = $d30
    Hour   = $M
    Minute = $mnt0
    Second = $s0
}
$thisYear = Get-Date @splat
$splat = @{
    Year   = $y + $y1
    Month  = $mth1
    Day    = $d1
    Hour   = $h0
    Minute = $mnt0
    Second = $s0
}
$nextYear = Get-Date @splat
$duration = New-TimeSpan -Start $thisYear -End $nextYear
Write-Host ([Math]::Truncate($duration.TotalHours))
exit 0