$r = [int][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
Write-Host ($three * [Math]::Pow($r, $two))
exit 0