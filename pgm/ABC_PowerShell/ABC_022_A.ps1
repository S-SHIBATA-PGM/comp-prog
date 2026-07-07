$N, $S, $T = [uint32[]][Console]::ReadLine().Split()
$W = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$pre = [uint32]$W
$A = New-Object int32[] $N
$A[$zero] = [uint32]$pre
for ($i = $one; $i -lt $N; $i++) {
    $diff = [int32][Console]::ReadLine()
    $A[$i] = $pre + $diff
    $pre = $A[$i]
}
$cnt = $zero
foreach ($num in $A) {
    if ($num -ge $S -and $num -le $T) {
        $cnt++
    }
}
Write-Host ($cnt)
exit 0