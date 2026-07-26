$x, $y = [uint32[]][Console]::ReadLine().Split()
Write-Host ([Math]::truncate($y / $x))
exit 0