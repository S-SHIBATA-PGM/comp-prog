$X, $Y = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
if ([Math]::Max($X, $Y) -lt [Math]::min($X, $Y) + $three) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0