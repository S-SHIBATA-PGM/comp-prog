$A, $B = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$SA = [int][string]$A[$zero] + [int][string]$A[$one] + [int][string]$A[$two]
$SB = [int][string]$B[$zero] + [int][string]$B[$one] + [int][string]$B[$two]
Write-Host ([Math]::Max($SA, $SB))
exit 0