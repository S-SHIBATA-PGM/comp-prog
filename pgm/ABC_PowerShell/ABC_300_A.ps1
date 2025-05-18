$N, $A, $B = [int[]][Console]::ReadLine().Split(" ")
$C = [int[]][Console]::ReadLine().Split(" ")
Write-Host ($C.IndexOf($A + $B) + 1)
exit 0