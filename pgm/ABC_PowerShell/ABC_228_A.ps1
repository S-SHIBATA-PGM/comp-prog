$S, $T, $X = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name twentyFour -Value 24 -Option Constant
if ($S -gt $T) {
    $T += $twentyFour
}
if ($S -gt $X) {
    $X += $twentyFour
}
if ($S -le $X -and $X -lt $T) {
    Write-Host($Yes)
}
else {
    Write-Host($No)
}
exit 0