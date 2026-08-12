$X = [uint32][Console]::ReadLine()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
Set-Variable -Name "six" -value ([uint32]6) -Option Constant
if ($one * $three -le $X -and $X -le $six * $three) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0