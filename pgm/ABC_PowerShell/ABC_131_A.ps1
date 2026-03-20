$S = [Console]::ReadLine()
Set-Variable -Name "Bad" -value ([string]"Bad") -Option Constant
Set-Variable -Name "Good" -value ([string]"Good") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "nine" -value ([uint32]9) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$reg = '([{0}-{1}])\{2}' -f $zero, $nine, $one
if ($S -match $reg) {
    Write-Host $Bad
}
else {
    Write-Host $Good
}
exit 0