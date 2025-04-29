[int] $N, [int] $X, [int] $Y, [int] $Z = [Console]::ReadLine().Split(" ")
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
$condition = [Math]::Min($X, $Y) -le $Z -and $Z -le [Math]::Max($X, $Y)
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]
exit 0