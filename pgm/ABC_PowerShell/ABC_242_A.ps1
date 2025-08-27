$A, $B, $C, $X = [double[]][Console]::ReadLine().Split()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name twelve -Value 12 -Option Constant
if ($A -ge $X) {
    Write-Host $one.ToString("N$twelve")
}
elseif ($B -ge $X) {
    Write-Host ($C / ($B - $A)).ToString("N$twelve")
}
else {
    Write-Host $zero.ToString("N$twelve")
}
exit 0