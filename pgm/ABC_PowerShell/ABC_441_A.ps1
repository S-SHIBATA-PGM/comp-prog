$P, $Q = [uint32[]][Console]::ReadLine().Split()
$X, $Y = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "hundred" -Value ([uint32]100) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
if (($P -le $X) -and
    ($X -le $P + $hundred - $one) -and
    ($Q -le $Y) -and
    ($Y -le $Q + $hundred - $one)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit $zero