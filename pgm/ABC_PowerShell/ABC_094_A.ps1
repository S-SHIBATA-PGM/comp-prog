$A, $B, $X = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
if ($A -le $X -and $X -le $A + $B) {
    Write-Host $YES
}
else {
    Write-Host $NO
}
exit 0