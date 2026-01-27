$N = [Console]::ReadLine()
Set-Variable -Name "seven" -Value "7" -Option Constant
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
if ($N.Contains($seven)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0