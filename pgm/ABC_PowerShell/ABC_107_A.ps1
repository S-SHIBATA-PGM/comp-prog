$N, $i = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ($N - $i + $one)
exit 0