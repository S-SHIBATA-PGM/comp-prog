[Console]::ReadLine() > $null
$S = [string][Console]::ReadLine()
Set-Variable -Name M -Value "M" -Option Constant
Set-Variable -Name F -Value "F" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($S.Contains("${M}${M}") -or $S.Contains("${F}${F}")) {
    Write-Host No
}
else {
    Write-Host Yes
}
exit 0