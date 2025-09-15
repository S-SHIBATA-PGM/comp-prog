Set-Variable -Name x -Value "x" -Option Constant
$a, $b = [int[]][Console]::ReadLine().Split($x)
Write-Host ($a * $b)
exit 0