$N = [Console]::ReadLine()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "nine" -value ([uint32]9) -Option Constant
if ($N.Contains($nine.ToString())) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0