$S1 = [Console]::ReadLine()
$S2 = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "A" -Value ([char]'A') -Option Constant
Set-Variable -Name "B" -Value ([char]'B') -Option Constant
Set-Variable -Name "C" -Value ([char]'C') -Option Constant
Set-Variable -Name "D" -Value ([char]'D') -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$isDiagonal = (
    ($S1[0] -ceq $A -and $S2[1] -ceq $D) -or 
    ($S1[0] -ceq $D -and $S2[1] -ceq $A) -or
    ($S1[1] -ceq $A -and $S2[0] -ceq $D) -or 
    ($S1[1] -ceq $D -and $S2[0] -ceq $A)
)
if ($isDiagonal) {
    Write-Host $No
}
else {
    Write-Host $Yes
}
exit 0