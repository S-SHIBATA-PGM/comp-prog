[string] $S = [Console]::ReadLine()
Set-Variable -Name dot -Value "." -Option Constant
Write-Host $S.replace($dot, "")