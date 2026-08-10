$N, $M = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$cnt = $zero
while ($M -gt $zero) {
    $cnt += $one
    $M = $N % $M
}
Write-Host $cnt
exit 0