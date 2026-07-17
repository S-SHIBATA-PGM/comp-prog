$X = [Console]::ReadLine()
Set-Variable -Name "iA" -value ([uint32][char]'A') -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
Write-Host ([uint32][char]$X[$zero] - $iA + $one)
exit 0