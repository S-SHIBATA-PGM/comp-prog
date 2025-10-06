$X = [int][Console]::ReadLine()
Set-Variable -Name divisor -Value 100 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($X -ne $zero -and $X % $divisor -eq $zero) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0