[void][Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
$X = [uint32][Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
if ([Array]::IndexOf($A, $X) -ge $zero) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0