$N, $M = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "OK" -Value ([string]"OK") -Option Constant
Set-Variable -Name "Too" -Value ([string]"Too Many Requests") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
for ($i = $one; $i -le $N; $i++) {
    if ($i -le $M) {
        Write-Host $OK
    }
    else {
        Write-Host $Too
    }
}
exit 0