$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "sNine" -Value ([string]"Nine") -Option Constant
Set-Variable -Name "Nein" -Value ([string]"Nein") -Option Constant
Set-Variable -Name "nine" -Value ([uint32]9) -Option Constant
if ($A + $B -eq $nine -or
    $A - $B -eq $nine -or
    $A * $B -eq $nine -or
    $A / $B -eq $nine) {
    Write-Host $sNine
}
else {
    Write-Host $Nein
}
exit 0