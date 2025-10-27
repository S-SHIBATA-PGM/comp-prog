$A, $B = [double[]][Console]::ReadLine().Split()
Set-Variable -Name three -Value 3 -Option Constant
Write-Host (($A - $B) / $three + $B)
exit 0