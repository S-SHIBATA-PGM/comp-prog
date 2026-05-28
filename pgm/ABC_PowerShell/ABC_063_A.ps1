$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "errMsg" -value ([string]"error") -Option Constant
Set-Variable -Name "ten" -value ([uint32]10) -Option Constant
if ($A + $B -lt $ten) {
    Write-Host ($A + $B)
}
else {
    Write-Host $errMsg
}
exit 0