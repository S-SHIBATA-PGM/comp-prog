$K = [int][Console]::ReadLine()
$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "OK" -Value "OK" -Option Constant
Set-Variable -Name "NG" -Value "NG" -Option Constant
if ($A -le [Math]::Floor($B / $K) * $K) {
    Write-Host $OK
}
else {
    Write-Host $NG
}
exit 0