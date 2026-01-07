$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -Value 2 -Option Constant
Set-Variable -Name "hundred" -Value 100 -Option Constant
Write-Host ($A * $two + $hundred - $B)
exit 0