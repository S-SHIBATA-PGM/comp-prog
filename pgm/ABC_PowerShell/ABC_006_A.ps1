$N = [uint32][Console]::ReadLine()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if ($N % $three -eq $zero -or 
    $N.ToString().IndexOf($three.ToString()[$zero]) -gt - $one) {
    Write-Host $YES
}
else {
    Write-Host $NO
}
exit 0