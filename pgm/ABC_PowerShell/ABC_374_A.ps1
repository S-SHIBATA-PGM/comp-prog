[string] $S = [Console]::ReadLine()
Set-Variable -Name san -Value "san" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$condition = $S.EndsWith($san)
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]