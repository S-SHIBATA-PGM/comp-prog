[int] $L, $R = [Console]::ReadLine().Split(" ")
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name Invalid -Value "Invalid" -Option Constant
if ($L -eq $one -and $R -eq $zero) {
    Write-Host -NoNewline Yes
}
elseif ($L -eq $zero -and $R -eq $one) {
    Write-Host -NoNewline No
}
else {
    Write-Host -NoNewline Invalid
}
Write-Host