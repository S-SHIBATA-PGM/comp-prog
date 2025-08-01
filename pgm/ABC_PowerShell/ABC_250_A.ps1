$H, $W = [int[]][Console]::ReadLine().Split()
$R, $C = [int[]][Console]::ReadLine().Split()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
if ($one -lt $R -and $R -lt $H -and $one -lt $C -and $C -lt $W) {
    Write-Host($two + $two)
}
elseif (($R -eq $one -or $R -eq $H) -and $one -lt $C -and $C -lt $W) {
    Write-Host($two + [Math]::Min($one, $H - $one))
}
elseif ($one -lt $R -and $R -lt $H -and ($C -eq $one -or $C -eq $W)) {
    Write-Host($two + [Math]::Min($one, $W - $one))
}
else {
    Write-Host([Math]::Min($one, $H - $one) + [Math]::Min($one, $W - $one))
}
exit 0