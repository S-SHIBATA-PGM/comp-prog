$K = [int][Console]::ReadLine()
Set-Variable -Name d -Value 0 -Option Constant
Set-Variable -Name h -Value 21 -Option Constant
Set-Variable -Name m -Value 0 -Option Constant
Set-Variable -Name s -Value 0 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name hhmm -Value "hh\:mm" -Option Constant
$timespan = [TimeSpan]::New($d, $h, $m, $s)
$additional = [TimeSpan]::New($zero, $zero, $K, $zero)
$timespan = $timespan.Add($additional)
Write-Host ("{0:${hhmm}}" -f $timespan)
exit 0