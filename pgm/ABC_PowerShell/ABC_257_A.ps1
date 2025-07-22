$N, $X = [int[]][Console]::ReadLine().Split()
[char]$A = 'A'
Write-Host ([char]([int]$A + [int][Math]::Truncate(($X - 1) / $N)))
exit 0