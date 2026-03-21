$X, $A = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "ten" -value ([uint32]10) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if ($X -lt $A) {
    Write-Host $zero
}
else {
    Write-Host $ten
}
exit 0