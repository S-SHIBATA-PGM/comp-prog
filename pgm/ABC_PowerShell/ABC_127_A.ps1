$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "five" -value ([uint32]5) -Option Constant
Set-Variable -Name "twelve" -value ([uint32]12) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if ($A -le $five) {
    Write-Host $zero
}
elseif ($A -le $twelve) {
    Write-Host ($B / $two)
}
else {
    Write-Host $B
}
exit 0