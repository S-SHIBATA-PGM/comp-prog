$S = [Console]::ReadLine()
Set-Variable -Name "odd" -Value ([string]"odd") -Option Constant
Set-Variable -Name "even" -Value ([string]"even") -Option Constant
Set-Variable -Name "o" -Value ([string]"o") -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cnt = [uint32]([System.Text.RegularExpressions.Regex]::Matches($S, $o)).Count
if ($cnt % $two -ne $zero) {
    Write-Host $odd
}
else {
    Write-Host $even
}
exit 0