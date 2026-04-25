$abc = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "ten" -value ([uint32]10) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$abc = $abc | Sort-Object -Descending
Write-Host ($ten * $abc[$zero] + $abc[$one] + $abc[$two])
exit 0