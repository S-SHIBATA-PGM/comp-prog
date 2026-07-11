$abc = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
$abc = $abc | Sort-Object
Write-Host $abc[$one]
exit 0