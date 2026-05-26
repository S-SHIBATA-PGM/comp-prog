$X, $A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "delicious" -value ([string]"delicious") -Option Constant
Set-Variable -Name "safe" -value ([string]"safe") -Option Constant
Set-Variable -Name "dangerous" -value ([string]"dangerous") -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if ($B - $A -le $zero) {
    Write-Host $delicious
}
elseif ($B - $A -le $X) {
    Write-Host $safe
}
else {
    Write-Host $dangerous
}
exit 0