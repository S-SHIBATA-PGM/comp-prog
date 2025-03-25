$S = [int[]](([string][Console]::ReadLine()).Split(" "))
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
$S = $S | Sort-Object
$condition = $S[0] * $S[1] -eq $S[2]
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]