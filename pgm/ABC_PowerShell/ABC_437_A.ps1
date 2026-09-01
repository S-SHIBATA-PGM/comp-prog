$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "twelve" -Value ([uint32]12) -Option Constant
Write-Host ($twelve * $A + $B)
exit 0