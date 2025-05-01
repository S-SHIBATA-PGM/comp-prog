Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
([int[]][Console]::ReadLine().split(" ") |
Measure-Object -Sum).Sum -eq $zero ? $one : $zero