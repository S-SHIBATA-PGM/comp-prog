$null, $L, $R = [uint32[]][Console]::ReadLine().Split()
$S = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "cO" -Value ([char]'o') -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
if (($S.Substring($L - $one, $R - $L + $one).ToCharArray() |
        Where-Object { $_ -ne $cO }).Count -eq $zero) {
    Write-Host Yes
}
else {
    Write-Host No
}
exit 0