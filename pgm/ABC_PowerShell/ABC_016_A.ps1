$M, $D = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if ($M % $D -eq $zero) {
    Write-Host $YES
}
else {
    Write-Host $No
}
exit 0