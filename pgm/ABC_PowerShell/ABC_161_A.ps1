$X, $Y, $Z = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "space" -Value " " -Option Constant
$Y, $X = $X, $Y
$Z, $X = $X, $Z
Write-Host (@($X, $Y, $Z) -join $space)
exit 0