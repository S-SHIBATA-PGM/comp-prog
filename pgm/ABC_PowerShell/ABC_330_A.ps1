$N, $L = [int[]][Console]::ReadLine().Split(" ")
([int[]][Console]::ReadLine().Split(" ") | Where-Object {
    $_ -ge $L
}).Count
exit 0