$AB, $BC, $CA = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host ($BC * $AB / $two)
exit 0