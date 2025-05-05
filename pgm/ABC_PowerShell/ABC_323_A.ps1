Set-Variable -Name zero -Value '0' -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$input -match "^.$zero.$zero.$zero.$zero.$zero.$zero.$zero.$zero$" ? $Yes : $No
exit 0