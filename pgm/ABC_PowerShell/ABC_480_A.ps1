$S1 = [Console]::ReadLine()
$S2 = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "A" -Value ([char]'A') -Option Constant
Set-Variable -Name "B" -Value ([char]'B') -Option Constant
Set-Variable -Name "C" -Value ([char]'C') -Option Constant
Set-Variable -Name "D" -Value ([char]'D') -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$isDiagonal = (
    ($S1[$zero] -ceq $A -and $S2[$one] -ceq $D) -or 
    ($S1[$zero] -ceq $D -and $S2[$one] -ceq $A) -or
    ($S1[$one] -ceq $A -and $S2[$zero] -ceq $D) -or 
    ($S1[$one] -ceq $D -and $S2[$zero] -ceq $A)
)
if ($isDiagonal) {
    Write-Host $No
}
else {
    Write-Host $Yes
}
exit 0