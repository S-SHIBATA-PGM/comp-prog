$A, $D = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host (([Math]::Min($A, $D) + $one) * [Math]::Max($A, $D))
exit 0