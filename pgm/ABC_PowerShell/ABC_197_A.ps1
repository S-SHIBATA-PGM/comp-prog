$S = [Console]::ReadLine()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
Write-Host ([String]::Concat($S.Substring($one), $S[$zero]))
exit 0