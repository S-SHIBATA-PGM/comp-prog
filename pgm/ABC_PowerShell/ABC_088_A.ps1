$N, $A = [uint32[]]@($input)
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "fiveHundred" -value ([uint32]500) -Option Constant
if ($N % $fiveHundred -le $A) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0