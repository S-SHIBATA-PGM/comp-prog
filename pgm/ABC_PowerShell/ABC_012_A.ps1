$A, $B = [uint32[]][Console]::ReadLine().Split()
$A, $B = $B, $A
Set-Variable -Name "space" -value ([string]" ") -Option Constant
Write-Host ("$A$space$B")
exit 0