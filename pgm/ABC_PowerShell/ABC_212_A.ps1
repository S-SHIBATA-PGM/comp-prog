$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name Gold -Value "Gold" -Option Constant
Set-Variable -Name Silver -Value "Silver" -Option Constant
Set-Variable -Name Alloy -Value "Alloy" -Option Constant
Set-Variable -Name problem8 -Value 8 -Option Constant
if ($A -gt $zero -and $B -gt $zero) {
    Write-Host Alloy
}
elseif ($A -eq $zero) {
    Write-Host Silver
}
else {
    Write-Host Gold
}
exit 0