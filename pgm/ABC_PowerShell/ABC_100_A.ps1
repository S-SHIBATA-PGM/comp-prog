$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yay" -value ([string]"Yay!")
Set-Variable -Name "no" -value ([string]":(")
Set-Variable -Name "eight" -value ([uint32]8)
if ($A -le $eight -and $B -le $eight) {
    Write-Host $Yay
}
else {
    Write-Host $no
}
exit 0