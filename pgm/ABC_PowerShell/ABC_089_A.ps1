$N = [uint32][Console]::ReadLine()
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
Write-Host ([Math]::Floor($N / $three))
exit 0