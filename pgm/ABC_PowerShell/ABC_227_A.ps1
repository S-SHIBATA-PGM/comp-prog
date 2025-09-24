$N, $K, $A = [int[]][Console]::ReadLine().Split()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
if (($K + $A - $one) % $N -eq $zero) {
    Write-Host($N)
}
else {
    Write-Host(($K + $A - $one) % $N)
}
exit 0