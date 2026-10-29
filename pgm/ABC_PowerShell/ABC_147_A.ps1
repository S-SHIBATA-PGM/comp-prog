$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "bust" -Value ([string]"bust") -Option Constant
Set-Variable -Name "win" -Value ([string]"win") -Option Constant
Set-Variable -Name "twentyTwo" -Value ([uint32]22) -Option Constant
$sum = $zero
$len = $A.Length
for ([uint32]$i = $zero; $i -lt $len; $i++) {
    $sum += $A[$i]
}
if ($sum -ge $twentyTwo) {
    Write-Host $bust
}
else {
    Write-Host $win
}
exit 0