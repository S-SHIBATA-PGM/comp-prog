$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Possible" -value ([string]"Possible") -Option Constant
Set-Variable -Name "Impossible" -value ([string]"Impossible") -Option Constant
Set-Variable -Name "three" -value ([uint32]"3") -Option Constant
if ($A % $three -and $B % $three -and ($A + $B) % $three) {
    Write-Host $Impossible
}
else {
    Write-Host $Possible
}
exit 0