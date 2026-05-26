$rgb = [uint32]( -join [Console]::ReadLine().Split())
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "four" -value ([uint32]4) -Option Constant
if ($rgb % $four) {
    Write-Host $NO
}
else {
    Write-Host $YES
}
exit 0