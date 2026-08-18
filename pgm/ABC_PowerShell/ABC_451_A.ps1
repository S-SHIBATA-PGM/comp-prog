$S = [Console]::ReadLine()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "five" -value ([uint32]5) -Option Constant
if ($S.Length % $five) {
    Write-Host $No
}
else {
    Write-Host $Yes
}
exit 0