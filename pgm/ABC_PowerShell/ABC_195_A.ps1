$M, $H = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
if ($H % $M -eq $zero) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0