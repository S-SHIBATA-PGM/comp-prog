[Console]::ReadLine() > $null
$S = [string][Console]::ReadLine()
Set-Variable -Name a -Value "a" -Option Constant
Set-Variable -Name b -Value "b" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($S.Contains($a + $b) -or $S.Contains($b + $a)) {
    Write-Host Yes
}
else {
    Write-Host No
}
exit 0