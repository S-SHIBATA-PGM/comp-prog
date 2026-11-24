$N, $M = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "space" -Value ([string]" ") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$max = New-Object int32[] $M
for ([uint32]$i = $zero; $i -lt $M; $i++) {
    $max[$i] = - $one
}
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $C, $S = [uint32[]][Console]::ReadLine().Split()
    $C--
    if ($S -gt $max[$C]) {
        $max[$C] = $S
    }
}
Write-Host ($max -join $space)
exit 0