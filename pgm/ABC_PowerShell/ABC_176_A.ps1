$N, $X, $T = [int[]][Console]::ReadLine().Split()
Write-Host ([Math]::Ceiling($N / $X) * $T)
exit 0