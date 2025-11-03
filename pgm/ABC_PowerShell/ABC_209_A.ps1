$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
Write-Host ([Math]::Max($zero, $B - $A + $one))
exit 0