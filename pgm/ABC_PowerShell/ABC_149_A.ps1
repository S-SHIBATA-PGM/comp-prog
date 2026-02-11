$S, $T = [Console]::ReadLine().Split()
Set-Variable -Name "blank" -Value "" -Option Constant
Write-Host ($T, $S -join $blank)
exit 0