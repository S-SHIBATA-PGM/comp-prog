$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "hundred" -Value ([uint32]100) -Option Constant
Write-Host ($A * $two + $hundred - $B)
exit 0