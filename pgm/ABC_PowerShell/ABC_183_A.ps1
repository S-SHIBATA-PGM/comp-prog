$x = [int32][Console]::ReadLine()
Set-Variable -Name "zero" -Value ([int32]0) -Option Constant
Write-Host ([Math]::Max($zero, $x))
exit 0