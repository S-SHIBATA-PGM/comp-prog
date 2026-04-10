$N = [int][Console]::ReadLine()
Set-Variable -Name "HelloWorld" -value ([string]"Hello World") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
if ($N -eq $one) {
    Write-Host $HelloWorld
}
else {
    $A = [int][Console]::ReadLine()
    $B = [int][Console]::ReadLine()
    Write-Host ($A + $B)
}
exit 0