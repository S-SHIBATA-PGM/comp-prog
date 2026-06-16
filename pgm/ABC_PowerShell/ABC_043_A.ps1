$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([int32]1) -Option Constant
Set-Variable -Name "two" -value ([int32]2) -Option Constant
Write-Host ($N * ($one + $N) / $two)
exit 0