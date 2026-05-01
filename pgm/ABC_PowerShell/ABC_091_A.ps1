$A, $B, $C = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
if ($A + $B -ge $C) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0