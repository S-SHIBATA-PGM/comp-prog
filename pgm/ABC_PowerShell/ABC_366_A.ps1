[int] $N, [int] $T, [int] $A = [Console]::ReadLine().Split(" ")
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$condition = [Math]::Max($T, $A) -gt [Math]::Floor($N / 2)
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]