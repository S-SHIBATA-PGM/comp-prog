$A, $P = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
Write-Host ([Math]::Truncate(($A * $three + $P) / $two))
exit 0