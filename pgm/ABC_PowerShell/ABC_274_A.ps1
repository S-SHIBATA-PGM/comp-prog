$A, $B = [int[]][Console]::ReadLine().Split(" ")
Set-Variable -Name digit -Value 4 -Option Constant
$average = [Math]::Round($B / $A, $digit - 1, [MidpointRounding]::AwayFromZero)
Write-Host ("{0:f3}" -f $average)
exit 0