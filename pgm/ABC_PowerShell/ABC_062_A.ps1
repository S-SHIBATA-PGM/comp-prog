$x, $y = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
Set-Variable -Name "four" -value ([uint32]4) -Option Constant
Set-Variable -Name "five" -value ([uint32]5) -Option Constant
Set-Variable -Name "six" -value ([uint32]6) -Option Constant
Set-Variable -Name "seven" -value ([uint32]7) -Option Constant
Set-Variable -Name "eight" -value ([uint32]8) -Option Constant
Set-Variable -Name "nine" -value ([uint32]9) -Option Constant
Set-Variable -Name "ten" -value ([uint32]10) -Option Constant
Set-Variable -Name "eleven" -value ([uint32]11) -Option Constant
Set-Variable -Name "twelve" -value ([uint32]12) -Option Constant
$g1 = @($one, $three, $five, $seven, $eight, $ten, $twelve)
$g2 = @($four, $six, $nine, $eleven)
$g3 = @($two)
if (($x -in $g1 -and $y -in $g1) -or
    ($x -in $g2 -and $y -in $g2) -or
    ($x -in $g3 -and $y -in $g3)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0