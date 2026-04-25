$N = [uint32][Console]::ReadLine()
Set-Variable -Name "ABC" -value ([string]"ABC") -Option Constant
Set-Variable -Name "ABD" -value ([string]"ABD") -Option Constant
Set-Variable -Name "thousand" -value ([uint32]1000) -Option Constant
if ($N -lt $thousand) {
    Write-Host $ABC
}
else {
    Write-Host $ABD
}
exit 0