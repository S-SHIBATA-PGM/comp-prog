$S = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
if (($S.ToCharArray() | Select-Object -Unique).Count -eq $one) {
    Write-Host $No
}
else {
    Write-Host $Yes
}
exit 0