$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host (($A - $one) * ($B - $one))
exit 0