$N = [uint32][Console]::ReadLine()
Set-Variable -Name "comma" -value ([string]",") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ([string]::Join($comma, $N..$one))
exit 0