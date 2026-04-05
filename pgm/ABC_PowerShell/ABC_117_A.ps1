$T, $X = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "F" -value ([string]"F") -Option Constant
Set-Variable -Name "colon" -value ([string]":") -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
Set-Variable -Name "ten" -value ([uint32]10) -Option Constant
$fmt = "{$zero$colon$F$ten}"
Write-Host ($fmt -f ($T / $X))
exit 0