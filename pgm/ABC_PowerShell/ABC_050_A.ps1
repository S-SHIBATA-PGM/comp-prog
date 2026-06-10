$arr = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "plus" -value ([string]"+") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$A = [uint32]$arr[$zero]
$op = [string]$arr[$one]
$B = [uint32]$arr[$two]
if ($op -ceq $plus) {
    Write-Host ($A + $B)
}
else {
    Write-Host ($A - $B)
}
exit 0