$D, $T, $S = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
if ($D -le $T * $S) {
    Write-Host Yes
}
else {
    Write-Host No
}
exit 0