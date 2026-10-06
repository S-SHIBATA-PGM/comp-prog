$N, $L, $R = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cnt = $zero
for ($i = $zero; $i -lt $N; $i++) {
    $X, $Y = [uint32[]][Console]::ReadLine().Split()
    if (($X -le $L) -and ($R -le $Y)) {
        $cnt++
    }
}
Write-Host $cnt
exit 0