$N = [uint32][Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$start = [uint32][Math]::Truncate($N / $two)
$sum = $zero
for ([uint32]$i = $start; $i -lt $N; $i++) {
    $sum += $A[$i]
}
Write-Host $sum
exit 0