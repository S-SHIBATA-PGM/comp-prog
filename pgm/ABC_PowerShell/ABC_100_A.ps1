$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yay" -value ([string]"Yay!") -Option Constant
Set-Variable -Name "no" -value ([string]":(") -Option Constant
Set-Variable -Name "eight" -value ([uint32]8) -Option Constant
if ($A -le $eight -and $B -le $eight) {
    Write-Host $Yay
}
else {
    Write-Host $no
}
exit 0