$C = [string][Console]::ReadLine()
Set-Variable -Name "Won" -Value "Won" -Option Constant
Set-Variable -Name "Lost" -Value "Lost" -Option Constant
Set-Variable -Name "one" -Value 1U -Option Constant
Set-Variable -Name "two" -Value 2U -Option Constant
Set-Variable -Name "zero" -Value 0U -Option Constant
if ($C[$zero] -eq $C[$one] -and $C[$one] -eq $C[$two]) {
    Write-Host $Won
}
else {
    Write-Host $Lost
}
exit 0