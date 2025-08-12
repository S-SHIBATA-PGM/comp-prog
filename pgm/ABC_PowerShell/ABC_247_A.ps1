$S = [Console]::ReadLine()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
Write-Host $S.Remove($S.Length - $one).insert($zero, $zero.ToString())
exit 0