$S = [Console]::ReadLine()
Set-Variable -Name "o" -Value ([string]"o") -Option Constant
Write-Host ([string]::Join($o, [char[]]$S))
exit 0