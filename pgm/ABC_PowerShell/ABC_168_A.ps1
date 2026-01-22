$N = [int][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "four" -Value ([uint32]4) -Option Constant
Set-Variable -Name "five" -Value ([uint32]5) -Option Constant
Set-Variable -Name "six" -Value ([uint32]6) -Option Constant
Set-Variable -Name "seven" -Value ([uint32]7) -Option Constant
Set-Variable -Name "eight" -Value ([uint32]8) -Option Constant
Set-Variable -Name "nine" -Value ([uint32]9) -Option Constant
Set-Variable -Name "ten" -Value ([uint32]10) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
Set-Variable -Name "hon" -Value "hon" -Option Constant
Set-Variable -Name "pon" -Value "pon" -Option Constant
Set-Variable -Name "bon" -Value "bon" -Option Constant
$arrHon = $two, $four, $five, $seven, $nine
$arrPon = $zero, $one, $six, $eight
$onesDigit = $N % $ten
if ($arrHon -contains $onesDigit) {
    Write-Host $hon
}
elseif ($arrPon -contains $onesDigit) {
    Write-Host $pon
}
else {
    Write-Host $bon
}
exit 0