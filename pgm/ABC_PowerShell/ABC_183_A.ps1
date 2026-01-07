$x = [int][Console]::ReadLine()
Set-Variable -Name "zero" -Value 0 -Option Constant
Write-Host ([Math]::Max($zero, $x))
exit 0