$X, $Y = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "Ocelot" -Value ([string]"Ocelot") -Option Constant
Set-Variable -Name "Serval" -Value ([string]"Serval") -Option Constant
Set-Variable -Name "Lynx" -Value ([string]"Lynx") -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$OS = @($Ocelot, $Serval, $Lynx)
if ([Array]::IndexOf($OS, $Y) -le [Array]::IndexOf($OS, $X)) {
    Write-Host Yes
}
else {
    Write-Host No
}
exit 0