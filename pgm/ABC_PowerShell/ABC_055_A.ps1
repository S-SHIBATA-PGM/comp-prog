$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "fifteen" -value ([uint32]15) -Option Constant
Set-Variable -Name "twoHundred" -value ([uint32]200) -Option Constant
Set-Variable -Name "eightHundred" -value ([uint32]800) -Option Constant
Write-Host ($eightHundred * $N - $twoHundred * [Math]::floor($N / $fifteen))
exit 0