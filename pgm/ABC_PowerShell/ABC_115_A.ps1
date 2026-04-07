$D = [int][Console]::ReadLine()
Set-Variable -Name "Christmas" -value ([string]"Christmas") -Option Constant
Set-Variable -Name "ChristmasEve" -value ([string]"Christmas Eve") -Option Constant
Set-Variable -Name "ChristmasEveEve" -value ([string]"Christmas Eve Eve") -Option Constant
Set-Variable -Name "ChristmasEveEveEve" -value ([string]"Christmas Eve Eve Eve") -Option Constant
Set-Variable -Name "twentyThird" -value ([uint32]23) -Option Constant
Set-Variable -Name "twentyFourth" -value ([uint32]24) -Option Constant
Set-Variable -Name "twentyFifth" -value ([uint32]25) -Option Constant
if ($D -eq $twentyFifth) {
    Write-Host $Christmas
}
elseif ($D -eq $twentyFourth) {
    Write-Host $ChristmasEve
}
elseif ($D -eq $twentyThird) {
    Write-Host $ChristmasEveEve
}
else {
    Write-Host $ChristmasEveEveEve
}
exit 0