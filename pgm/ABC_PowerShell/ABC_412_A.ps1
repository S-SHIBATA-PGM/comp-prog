$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cnt = $zero
for ($i = $one; $i -le $N; $i++) {
    $A, $B = [int32[]][Console]::ReadLine().Split()
    if ($A -lt $B) {
        $cnt++
    }
}
Write-Host $cnt
exit 0