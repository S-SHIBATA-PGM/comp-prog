$A1, $A2, $A3, $A4 = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "twentyTwo" -Value ([uint32]22) -Option Constant
Set-Variable -Name "bust" -Value "bust" -Option Constant
Set-Variable -Name "win" -Value "win" -Option Constant
if ($A1 + $A2 + $A3 -ge $twentyTwo) {
    Write-Host $bust
}
else {
    Write-Host $win
}
exit 0