$X = [int][Console]::ReadLine()
Set-Variable -Name divisor -Value 100 -Option Constant
Write-Host ($divisor - $X % $divisor)
exit 0