$N = [uint32][Console]::ReadLine()
$S = [string][Console]::ReadLine()
Set-Variable -Name "cCircle" -Value ([char]'o') -Option Constant
Write-Host ($S.PadLeft($N, $cCircle))
exit 0