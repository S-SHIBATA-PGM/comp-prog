$A, $B, $C = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if ($A[$A.Length - $one] -eq $B[$zero] -and
    $B[$B.Length - $one] -eq $C[$zero]) {
    Write-Host "YES"
}
else {
    Write-Host "NO"
}
exit 0