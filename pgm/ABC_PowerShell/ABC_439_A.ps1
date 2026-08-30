$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Write-Host (($one -shl $N) - ($N -shl $one))
exit 0