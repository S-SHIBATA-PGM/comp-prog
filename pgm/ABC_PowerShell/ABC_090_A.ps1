$c = [string[]]@($input)
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$c1 = [char]$c[$zero][$zero]
$c2 = [char]$c[$one][$one]
$c3 = [char]$c[$two][$two]
Write-Host "$c1$c2$c3"
exit 0