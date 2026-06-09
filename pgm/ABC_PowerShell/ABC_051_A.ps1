$s = [Console]::ReadLine()
Set-Variable -Name "comma" -value ([string]",") -Option Constant
Set-Variable -Name "space" -value ([string]" ") -Option Constant
Write-Host ($s -replace $comma, $space)
exit 0