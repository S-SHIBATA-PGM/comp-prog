Set-Variable -name cross -value "x" -option constant
$S = [int[]](([string][Console]::ReadLine()).Split($cross))
Write-Host ($S[0] * $S[1])