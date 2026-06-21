$A, $B, $C = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host (($A * $B + $B * $C + $C * $A) * $two)
exit 0