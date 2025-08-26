$V, $A, $B, $C = [int[]][Console]::ReadLine().Split()
Set-Variable -Name T -Value "T" -Option Constant
Set-Variable -Name F -Value "F" -Option Constant
Set-Variable -Name M -Value "M" -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$turn = $T
while ($V -ge $zero) {
    if ($turn -ceq $T) {
        $V -= $A
        $turn = $F
    }
    elseif ($turn -ceq $F) {
        $V -= $B
        $turn = $M
    }
    else {
        $V -= $C
        $turn = $T
    }
}
Write-Host $turn
exit 0