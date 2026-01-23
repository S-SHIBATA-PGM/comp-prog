$S = [Console]::ReadLine()
$T = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
if ($T.StartsWith($S)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0