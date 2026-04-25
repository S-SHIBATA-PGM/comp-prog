$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
if ($A * $B % $two) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0