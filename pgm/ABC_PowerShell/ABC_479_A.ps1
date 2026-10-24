[void][Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$sum = $zero
$len = $A.Length
for ([uint32]$i = $zero; $i -lt $len; $i += $two) {
    $sum += $A[$i]
}
Write-Host $sum
exit 0