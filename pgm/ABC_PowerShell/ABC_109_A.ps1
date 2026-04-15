$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes")
Set-Variable -Name "No" -value ([string]"No")
Set-Variable -Name "two" -value ([uint32]2)
if ($A * $B % $two) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0