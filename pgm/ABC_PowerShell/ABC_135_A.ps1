$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "IMPOSSIBLE" -value ([string]"IMPOSSIBLE") -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if (($A + $B) % $two -eq $zero) {
    Write-Host (($A + $B) / $two)
}
else {
    Write-Host $IMPOSSIBLE
}
exit 0