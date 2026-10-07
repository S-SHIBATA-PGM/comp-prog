$N, $M = [uint32[]][Console]::ReadLine().Split()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
if ([System.Linq.Enumerable]::Sum($A) -le $M) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0