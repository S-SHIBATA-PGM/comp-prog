Set-Variable -Name divisor -Value 100 -Option Constant
$D = [int][Console]::ReadLine()
Write-Host ($D / $divisor)
exit 0