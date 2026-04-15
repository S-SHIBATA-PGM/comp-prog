$abc = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1)
Set-Variable -Name "two" -value ([uint32]2)
Set-Variable -Name "ten" -value ([uint32]10)
Set-Variable -Name "zero" -value ([uint32]0)
$abc = $abc | Sort-Object -Descending
Write-Host ($ten * $abc[$zero] + $abc[$one] + $abc[$two])
exit 0