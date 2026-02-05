$S, $T = [string[]][Console]::ReadLine().Split()
$A, $B = [int[]][Console]::ReadLine().Split()
$U = [Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
if ($S -ceq $U) {
    Write-Host ($A - $one), $B
}
else {
    Write-Host $A, ($B - $one)
}
exit 0