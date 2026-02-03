$N, $R = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "ten" -Value ([uint32]10) -Option Constant
Set-Variable -Name "hundred" -Value ([uint32]100) -Option Constant
if ($N -ge $ten) {
    Write-Host $R
}
else {
    Write-Host ($R + $hundred * ($ten - $N))
}