$N = [uint32][Console]::ReadLine()
Set-Variable -Name "ABC" -value ([string]"ABC")
Set-Variable -Name "ABD" -value ([string]"ABD")
Set-Variable -Name "thousand" -value ([uint32]1000)
if ($N -lt $thousand) {
    Write-Host $ABC
}
else {
    Write-Host $ABD
}
exit 0