$N, $M = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
if ($M -le [uint32][Math]::Ceiling($N / $two)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0