$S = [string[]][Console]::ReadLine() -split "\B"
Set-Variable -Name "plus" -value ([string]"+") -Option Constant
Set-Variable -Name "blank" -value ([string]"") -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$cnt = $zero
foreach ($c in $S) {
    if ($c -ceq $plus) {
        $cnt++
    }
    elseif ($c -cne $blank) {
        $cnt--
    }
}
Write-Host $cnt
exit 0