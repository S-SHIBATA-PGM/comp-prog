$N, $M, $X, $T, $D = [int[]][Console]::ReadLine().Split()
Write-Host ($M -le $X ? $T - $D * ($X - $M) : $T)
exit 0