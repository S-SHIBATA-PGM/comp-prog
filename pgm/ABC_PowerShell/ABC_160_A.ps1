$S = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
Set-Variable -Name "four" -Value ([uint32]4) -Option Constant
Set-Variable -Name "five" -Value ([uint32]5) -Option Constant
if (($S[$two] -ceq $S[$three]) -and ($S[$four] -ceq $S[$five])) {
    Write-Host Yes
}
else {
    Write-Host No
}
exit 0