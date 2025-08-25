$N = [int][Console]::ReadLine()
$S = [Console]::ReadLine()
Set-Variable -Name one -Value 1 -Option Constant
Write-Host $S[$N - $one]
exit 0