$N = [int][Console]::ReadLine()
Set-Variable -Name "thousand" -Value 1000U -Option Constant
Write-Host (($thousand - $N % $thousand) % $thousand)
exit 0