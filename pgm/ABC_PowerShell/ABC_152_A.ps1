$N, $M = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
if ($N -eq $M) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0