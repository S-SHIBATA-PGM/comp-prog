$S = [string[]][Console]::ReadLine() -split "\B"
Set-Variable -Name "plus" -value ([string]"+")
Set-Variable -Name "blank" -value ([string]"")
Set-Variable -Name "zero" -value ([uint32]0)
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