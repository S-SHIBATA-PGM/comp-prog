$A, $B, $C = [int[]][Console]::ReadLine().Split(" ")
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
if ([Math]::pow($A, $two) + [Math]::pow($B, $two) -lt [Math]::pow($C, $two)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0