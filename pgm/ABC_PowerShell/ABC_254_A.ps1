Set-Variable -Name hundred -Value 100 -Option Constant
$N = [int][Console]::ReadLine()
Write-Host ("{0:D2}" -f ($N % $hundred))
exit 0