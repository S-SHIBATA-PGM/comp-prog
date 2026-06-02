$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "twentyFour" -value ([uint32]24) -Option Constant
Write-Host (($A + $B) % $twentyFour)
exit 0