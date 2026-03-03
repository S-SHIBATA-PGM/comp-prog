$S = [Console]::ReadLine()  
Set-Variable -Name "Sunny" -Value ([string]"Sunny") -Option Constant
Set-Variable -Name "Cloudy" -Value ([string]"Cloudy") -Option Constant
Set-Variable -Name "Rainy" -Value ([string]"Rainy") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
$Weather = [string[]]@($Sunny, $Cloudy, $Rainy)
Write-Host ($Weather[([Array]::IndexOf($Weather, $S) + $one) % $Weather.Length])
exit 0