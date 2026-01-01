$V, $T, $S, $D = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($V * $T -le $D -and $D -le $V * $S) {
    Write-Host $No
}
else {
    Write-Host $Yes
}
exit 0