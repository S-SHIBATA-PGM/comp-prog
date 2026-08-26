$S = [Console]::ReadLine()
Set-Variable -Name "pipe" -Value ([string]"|") -Option Constant
Set-Variable -Name "i" -Value ([string]"i") -Option Constant
Set-Variable -Name "j" -Value ([string]"j") -Option Constant
Set-Variable -Name "zero" -Value ([int32]0) -Option Constant
$fmt = [string]::Concat($i, $pipe, $j)
Write-Host ([regex]::Matches($S, $fmt).Count)
exit 0