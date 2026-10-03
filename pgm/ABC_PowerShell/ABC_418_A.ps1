[void][Console]::ReadLine()
$S = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "tea" -Value ([string]"tea") -Option Constant
if ($S.EndsWith($tea)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0