$a, $b, $c = [int[]][Console]::ReadLine().Split()
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name seven -Value 7 -Option Constant
Write-Host ($seven * $three - $a - $b - $c)
exit 0