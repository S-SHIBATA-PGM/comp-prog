$C = [string][Console]::ReadLine()
Set-Variable -Name "Won" -Value "Won" -Option Constant
Set-Variable -Name "Lost" -Value "Lost" -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
if ($C[$zero] -eq $C[$one] -and $C[$one] -eq $C[$two]) {
    Write-Host $Won
}
else {
    Write-Host $Lost
}
exit 0