[string] $S = [Console]::ReadLine()
Set-Variable -Name R -Value "R" -Option Constant
Set-Variable -Name M -Value "M" -Option Constant
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
$condition = $S.IndexOf($R) -lt $S.IndexOf($M)
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]
exit 0