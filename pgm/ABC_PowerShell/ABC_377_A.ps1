[char[]] $S = [Console]::ReadLine().ToCharArray()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name A -Value 'A' -Option Constant
Set-Variable -Name B -Value 'B' -Option Constant
Set-Variable -Name C -Value 'C' -Option Constant
$condition = $A -in $S -and $B -in $S -and $C -in $S
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]