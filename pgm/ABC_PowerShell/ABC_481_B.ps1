$N, $K = [uint32[]][Console]::ReadLine().Split()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cnt = $zero
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    if ($A[$i] -eq $K) {
        $cnt++
    }
}
for ([uint32]$i = $zero; $i -lt $N - $one; $i++) {
    $a1 = $A[$i]
    $a2 = $A[$i + $one]
    $min = [Math]::Min($a1, $a2)
    $max = [Math]::Max($a1, $a2)
    if ($min -lt $K -and $K -lt $max) {
        $cnt++
    }
}
Write-Host $cnt
exit 0