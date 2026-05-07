$S = [Console]::ReadLine()
Set-Variable -Name "year2017" -value ([string]"2017") -Option Constant
Set-Variable -Name "year2018" -value ([string]"2018") -Option Constant
Write-Host $S.Replace($year2017, $year2018)
exit 0