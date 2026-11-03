$N, $K = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Write-Host ($N - $K + $one)
exit 0