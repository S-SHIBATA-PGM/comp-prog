[int] $N, [int] $K, [int] $X = [Console]::ReadLine().Split(" ")
[System.Collections.ArrayList] $A = @()
$A = [Console]::ReadLine().Split(" ")
$A.Insert($K, $X)
Write-Host $A
exit 0