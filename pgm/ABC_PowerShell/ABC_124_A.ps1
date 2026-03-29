$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
if ($A -eq $B) {
    Write-Host ($A * $two)
}
else {
    Write-Host ([Math]::max($A, $B) * $two - $one)
}
exit 0