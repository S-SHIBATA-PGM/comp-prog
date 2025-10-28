$N, $A, $X, $Y = [int[]][Console]::ReadLine().Split()
Set-Variable -Name zero -Value 0 -Option Constant
Write-Host ($X * [Math]::Min($N, $A) + $Y * [Math]::Max($zero, $N - $A))
exit 0