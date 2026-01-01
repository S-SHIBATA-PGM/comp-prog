$A, $B = [decimal[]][Console]::ReadLine().Split()
Set-Variable -Name unity -Value 1 -Option Constant
Set-Variable -Name oneHundredPercent -Value 100 -Option Constant
Write-Host (($unity - $B / $A) * $oneHundredPercent)
exit 0