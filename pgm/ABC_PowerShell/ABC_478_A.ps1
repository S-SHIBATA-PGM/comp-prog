$N, $M = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$qt = [uint32][Math]::Truncate($M / $N)
$rem = $M % $N
for ([uint32]$i = $one; $i -le $N; $i++) {
    if ($i -le $rem) {
        Write-Host ($qt + $one)
    }
    else {
        Write-Host $qt
    }
}
exit 0