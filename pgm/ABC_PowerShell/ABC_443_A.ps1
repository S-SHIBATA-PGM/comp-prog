$S = [Console]::ReadLine()
Set-Variable -Name "sS" -Value ([string]"s") -Option Constant
Write-Host ([string]::Concat($S, $sS))
exit 0