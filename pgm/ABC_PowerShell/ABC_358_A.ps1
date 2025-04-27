[string] $S, [string] $T = [Console]::ReadLine().Split(" ")
Set-Variable -Name AtCoder -Value "AtCoder" -Option Constant
Set-Variable -Name Land -Value "Land" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$condition = $S -ceq $AtCoder -and $T -ceq $Land
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]
exit 0