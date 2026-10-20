$A = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "fourHundred" -Value ([uint32]400) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
if (($fourHundred % $A) -ne $zero) {
    Write-Host -$one
}
else {
    Write-Host (($fourHundred / $A))
}
exit 0