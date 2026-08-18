$M, $D = [uint32[]][Console]::ReadLine().Split()
$Gosekku =
[System.Collections.Generic.HashSet[ValueTuple[uint32, uint32]]]::new()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "M1" -value ([uint32]1) -Option Constant
Set-Variable -Name "M3" -value ([uint32]3) -Option Constant
Set-Variable -Name "M5" -value ([uint32]5) -Option Constant
Set-Variable -Name "M7" -value ([uint32]7) -Option Constant
Set-Variable -Name "M9" -value ([uint32]9) -Option Constant
Set-Variable -Name "D3" -value ([uint32]3) -Option Constant
Set-Variable -Name "D5" -value ([uint32]5) -Option Constant
Set-Variable -Name "D7" -value ([uint32]7) -Option Constant
Set-Variable -Name "D9" -value ([uint32]9) -Option Constant
[void]$Gosekku.Add([ValueTuple]::Create($M1, $D7))
[void]$Gosekku.Add([ValueTuple]::Create($M3, $D3))
[void]$Gosekku.Add([ValueTuple]::Create($M5, $D5))
[void]$Gosekku.Add([ValueTuple]::Create($M7, $D7))
[void]$Gosekku.Add([ValueTuple]::Create($M9, $D9))
if ($Gosekku.Contains([ValueTuple]::Create($M, $D))) {
    Write-Host Yes
}
else {
    Write-Host No
}
exit 0