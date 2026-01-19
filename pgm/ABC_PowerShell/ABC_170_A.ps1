$x = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([int32]0) -Option Constant
Write-Host ([Array]::IndexOf($x, $zero) + $one)
exit 0