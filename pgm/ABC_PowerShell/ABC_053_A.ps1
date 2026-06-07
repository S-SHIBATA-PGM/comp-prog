$x = [uint32][Console]::ReadLine()
Set-Variable -Name "ABC" -value ([string]"ABC") -Option Constant
Set-Variable -Name "ARC" -value ([string]"ARC") -Option Constant
Set-Variable -Name "oneThousandTwoHundred" -value ([uint32]1200) -Option Constant
if ($x -lt $oneThousandTwoHundred) {
    Write-Host $ABC
}
else {
    Write-Host $ARC
}
exit 0