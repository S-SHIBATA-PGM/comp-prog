[void][Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "space" -Value ([string]" ") -Option Constant
Set-Variable -Name "ten" -Value ([uint32]10) -Option Constant
Set-Variable -Name "hundred" -Value ([uint32]100) -Option Constant
Set-Variable -Name "thousand" -Value ([uint32]1000) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
[uint32]$sum1 = $zero
[uint32]$sum10 = $zero
[uint32]$sum100 = $zero
foreach ($val in $A) {
    $change = (($thousand - ($val % $thousand)) % $thousand)
    $sum1 += ($change % $ten)
    $sum10 += ([Math]::Floor($change / $ten) % $ten)
    $sum100 += [Math]::Floor($change / $hundred)
}
Write-Host "$sum1 $sum10 $sum100"
exit 0