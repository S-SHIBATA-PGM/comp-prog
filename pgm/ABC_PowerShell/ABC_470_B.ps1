$N = [uint32][Console]::ReadLine()
$C = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cnt = New-Object 'System.Collections.Generic.Dictionary[uint32, uint32]'
[uint32]$max = $zero
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $c_val = $C[$i]
    if ($cnt.ContainsKey($c_val)) {
        $cnt[$c_val] += $one
    }
    else {
        $cnt[$c_val] = $one
    }
    if ($cnt[$c_val] -gt $max) {
        $max = $cnt[$c_val]
    }
}
Write-Host ($N - $max)
exit 0