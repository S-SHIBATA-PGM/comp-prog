$A, $B = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value 1U -Option Constant
Set-Variable -Name "two" -Value 2U -Option Constant
Set-Variable -Name "zero" -Value 0U -Option Constant
$SA = [int][string]$A[$zero] + [int][string]$A[$one] + [int][string]$A[$two]
$SB = [int][string]$B[$zero] + [int][string]$B[$one] + [int][string]$B[$two]
Write-Host ([Math]::Max($SA, $SB))
exit 0