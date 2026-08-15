$L, $R = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ($R - $L + $one)
exit 0