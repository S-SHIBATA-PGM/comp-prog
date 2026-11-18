$N = [uint32][Console]::ReadLine()
$L = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$left = New-Object int64[] $N
[uint32]$curr = 0
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $curr += $L[$i]
    $left[$i] = $curr
}
$sum = $left[$N - $one]
[uint32]$min = [uint32]::MaxValue
for ([uint32]$i = $zero; $i -lt ($N - $one); $i++) {
    $diff = [Math]::Abs(($two * $left[$i]) - $sum)
    if ($diff -lt $min) {
        $min = $diff
    }
}
Write-Host $min
exit 0