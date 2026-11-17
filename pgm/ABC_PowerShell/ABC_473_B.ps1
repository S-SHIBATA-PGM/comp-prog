$N = [uint32][Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cnt = New-Object 'System.Collections.Generic.Dictionary[uint32, uint32]'
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $val = [uint32]$A[$i]
    if ($cnt.ContainsKey($val)) {
        $cnt[$val] += $one
    }
    else {
        $cnt[$val] = $one
    }
}
[uint32]$sum = $zero
foreach ($kvp in $cnt.GetEnumerator()) {
    if (($kvp.Value % $two) -eq $one) {
        $sum += $kvp.Key
    }
}
Write-Host $sum
exit 0