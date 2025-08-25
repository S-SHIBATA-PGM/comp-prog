Set-Variable -Name Takahashi -Value "Takahashi" -Option Constant
Set-Variable -Name Aoki -Value "Aoki" -Option Constant
$A, $B, $C, $D = [int []][Console]::ReadLine().Split()
if ($A -lt $C) {
    Write-Host $Takahashi
}
elseif ($A -gt $C) {
    Write-Host $Aoki
}
elseif ($B -le $D) {
    Write-Host $Takahashi
}
else {
    Write-Host $Aoki
}
exit 0