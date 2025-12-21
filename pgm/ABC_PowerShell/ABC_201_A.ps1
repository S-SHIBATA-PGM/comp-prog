$A = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$A = $A | Sort-Object
if ($A[$one] - $A[$zero] -eq $A[$two] - $A[$one]) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0