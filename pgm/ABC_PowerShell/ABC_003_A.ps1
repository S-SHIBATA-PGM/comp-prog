$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "fiveThousand" -value ([uint32]5000) -Option Constant
# 計算過程
# ($N * (1 + $N)) / 2 * 10000 / $N
# (1 + $N) / 2 * 10000
# (1 + $N) * 5000
Write-Host (($one + $N) * $fiveThousand)
exit 0