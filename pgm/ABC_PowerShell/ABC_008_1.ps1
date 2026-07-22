$S, $T = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ($T - $S + $one)
exit 0