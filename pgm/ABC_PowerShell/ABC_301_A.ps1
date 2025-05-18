[Console]::ReadLine() > $null
$S = [string[]][Console]::ReadLine() -split "\B"
Set-Variable -Name T -Value "T" -Option Constant
Set-Variable -Name A -Value "A" -Option Constant
$most = [Math]::Max(
    ($S | Where-Object { $_ -ceq $T }).Count,
    ($S | Where-Object { $_ -ceq $A }).Count
)
$cntT = 0
$cntA = 0
foreach ($c in $S) {
    if ($c -ceq $T) {
        $cntT++
    }
    else {
        $cntA++
    }
    if ($cntT -ge $most) {
        Write-Host $T
        break
    }
    elseif ($cntA -ge $most) {
        Write-Host $A
        break
    }
}
exit 0