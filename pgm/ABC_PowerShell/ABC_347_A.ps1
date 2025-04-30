$N, $K = [int[]][Console]::ReadLine().Split(" ")
([int[]][Console]::ReadLine().Split(" ") | ForEach-Object {
    if ($_ % $K -eq 0) {
        $_ / $K
    }
}) -join " "
exit 0