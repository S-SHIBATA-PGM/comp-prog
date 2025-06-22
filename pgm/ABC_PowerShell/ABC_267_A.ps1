$S = [Console]::ReadLine()
Set-Variable -Name Saturday -Value "Saturday" -Option Constant
Write-Host ([int][System.DayOfWeek]::$Saturday - [int][System.DayOfWeek]::$S)
exit 0