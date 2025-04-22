[int] $A, [int] $B, [int] $C = [Console]::ReadLine().Split(" ")
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if (
    ($C -lt $B) -and
    ($C -lt $A) -and
    ($A -lt $B)) {
    Write-Host $Yes
}
elseif (
    ($B -lt $C) -and
    (
        ($A -lt $B) -or
        ($C -lt $A)
    )) {
    Write-Host $Yes
}
else {
    Write-Host $No
}