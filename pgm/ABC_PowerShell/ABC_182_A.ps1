$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -Value 2U -Option Constant
Set-Variable -Name "hundred" -Value 100U -Option Constant
Write-Host ($A * $two + $hundred - $B)
exit 0