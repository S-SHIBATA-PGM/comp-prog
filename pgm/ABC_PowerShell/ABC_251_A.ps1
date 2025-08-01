$S = [Console]::ReadLine()
Set-Variable -Name six -Value 6 -Option Constant
Write-Host ($S * ($six / $S.Length))
exit 0