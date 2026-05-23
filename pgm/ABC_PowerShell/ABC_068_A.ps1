$N = [string][Console]::ReadLine().Split()
Set-Variable -Name "ABC" -value ([string]"ABC") -Option Constant
Write-Host "$ABC$N"
exit 0