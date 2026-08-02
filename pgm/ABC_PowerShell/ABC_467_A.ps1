$H, $W = [decimal[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "twentyFive" -value ([decimal]25) -Option Constant
Set-Variable -Name "hundred" -value ([decimal]100) -Option Constant
$H /= $hundred
Write-Host ($W / $H / $H -ge $twentyFive ? $Yes : $No)
exit 0