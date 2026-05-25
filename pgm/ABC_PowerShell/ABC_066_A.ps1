$abc = [uint32[]][Console]::ReadLine().Split()
$abc = $abc | Sort-Object
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
Write-Host ($abc[$zero] + $abc[$one])
exit 0