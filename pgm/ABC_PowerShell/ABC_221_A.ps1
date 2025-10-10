$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name thirtyTwo -Value 32 -Option Constant
Write-Host ([Math]::Pow($thirtyTwo, $A - $B))
exit 0