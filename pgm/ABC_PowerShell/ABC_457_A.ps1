$N = [uint32][Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
$X = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host $A[$X - $one]
exit 0