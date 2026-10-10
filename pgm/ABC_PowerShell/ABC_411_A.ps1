$P = [Console]::ReadLine()
$L = [uint32][Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
if ($P.Length -ge $L) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0