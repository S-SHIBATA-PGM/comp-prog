using namespace System.Collections.Generic
$A = [int][Console]::ReadLine()
$B = [int][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
Set-Variable -Name "blank" -Value "" -Option Constant
$choice = [int[]]@($one, $two, $three)
$wrong = [int[]]@($A, $B)
$set = [HashSet[int]]::new($choice)
$set.ExceptWith($wrong)
Write-Host ($set -join $blank)
exit 0