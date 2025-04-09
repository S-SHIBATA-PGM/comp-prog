$ABC = [int[]][Console]::ReadLine().Split(" ")
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
$ABC = $ABC | Sort-Object
$condition = $ABC[0] -eq $ABC[2] -or $ABC[0] + $ABC[1] -eq $ABC[2]
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]