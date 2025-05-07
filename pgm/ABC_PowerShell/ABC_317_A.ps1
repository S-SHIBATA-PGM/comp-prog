$N, $H, $X = [int[]][Console]::ReadLine().split()
[int[]][Console]::ReadLine().split() |
ForEach-Object -Begin {
    $i = 0
    $i > $null
    $idx = 0
    $idx > $null
} -Process {
    if ($H + $_ -ge $X) {
        $idx = $i + 1
        Write-Host $idx
        break
    }
    ++$i
}
exit 0