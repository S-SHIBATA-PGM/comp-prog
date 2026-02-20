$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "nine" -Value ([uint32]9) -Option Constant
Set-Variable -Name "no" -Value ([int32]-1) -Option Constant
if ($A -le $nine -and $B -le $nine) {
    Write-Host ($A * $B)
}
else {
    Write-Host $no
}
exit 0