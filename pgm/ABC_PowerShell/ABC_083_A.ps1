$A, $B, $C, $D = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Left" -value ([string]"Left") -Option Constant
Set-Variable -Name "Balanced" -value ([string]"Balanced") -Option Constant
Set-Variable -Name "Right" -value ([string]"Right") -Option Constant
if ($A + $B -gt $C + $D) {
    Write-Host $Left
}
elseif ($A + $B -lt $C + $D) {
    Write-Host $Right
}
else {
    Write-Host $Balanced
}
exit 0