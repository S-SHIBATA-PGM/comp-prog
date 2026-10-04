$null, $A, $B = [uint32[]][Console]::ReadLine().Split()
$S = [Console]::ReadLine()
$len = $S.Length
Write-Host $S.Substring($A, $len - $A - $B)
exit 0