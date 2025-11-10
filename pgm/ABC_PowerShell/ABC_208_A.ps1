$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name six -Value 6 -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($A -le $B -and $B -le $six * $A) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0