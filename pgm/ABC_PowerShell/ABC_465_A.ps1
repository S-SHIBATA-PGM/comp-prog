$A, $B = [int32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
if ($A * $three -gt $B * $two) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0