[void][Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
$K = [uint32][Console]::ReadLine()
Write-Host $A.Where({ $_ -ge $K }).Count
exit 0