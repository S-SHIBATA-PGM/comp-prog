$abc = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$abc = $abc | Sort-Object
if ($abc[$zero] + $abc[$one] -eq $abc[$two]) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0