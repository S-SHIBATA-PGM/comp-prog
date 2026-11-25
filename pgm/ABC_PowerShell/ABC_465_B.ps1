$X, $Y, $L, $R, $A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "twentyFour" -Value ([uint32]24) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$rate = New-Object uint32[] $twentyFour
for ([uint32]$t = $zero; $t -lt $twentyFour; $t++) {
    $rate[$t] = $Y
}
for ([uint32]$t = $L; $t -lt $R; $t++) {
    $rate[$t] = $X
}
[uint64]$sum = $zero
for ([uint32]$t = $A; $t -lt $B; $t++) {
    $sum += $rate[$t]
}
Write-Host $sum
exit 0