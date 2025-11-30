$A, $B = [decimal[]][Console]::ReadLine().Split()
Set-Variable -Name divisor -Value 100.0 -Option Constant
Write-Host ($A * $B / $divisor)
exit 0