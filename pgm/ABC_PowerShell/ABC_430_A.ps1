$A, $B, $C, $D = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
if ($A -le $C -and $D -lt $B) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0