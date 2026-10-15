$R, $X = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "lower1" -Value ([uint32]1600) -Option Constant
Set-Variable -Name "lower2" -Value ([uint32]1200) -Option Constant
Set-Variable -Name "upper1" -Value ([uint32]2999) -Option Constant
Set-Variable -Name "upper2" -Value ([uint32]2399) -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
$lower = [uint32[]]@($lower1, $lower2)
$upper = [uint32[]]@($upper1, $upper2)
if (($lower[$X - $one] -le $R) -and ($R -le $upper[$X - $one])) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0