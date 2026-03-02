$N = [int][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Write-Host ([Math]::Floor(($N + $one) / $two) / $N)
exit 0