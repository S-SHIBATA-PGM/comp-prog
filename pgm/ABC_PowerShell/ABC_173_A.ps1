$N = [int][Console]::ReadLine()
Set-Variable -Name "thousand" -Value ([uint32]1000) -Option Constant
Write-Host (($thousand - $N % $thousand) % $thousand)
exit 0