$X, $Y = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -value ([string]"Yes") -Option Constant
Set-Variable -Name No -value ([string]"No") -Option Constant
Set-Variable -Name nine -value ([uint32]9) -Option Constant
Set-Variable -Name sixteen -value ([uint32]16) -Option Constant
if ($nine * $X -eq $sixteen * $Y) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0