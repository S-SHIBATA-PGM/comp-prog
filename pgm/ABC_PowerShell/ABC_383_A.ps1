$N = [int][Console]::ReadLine()
[int[]] $T = New-Object int[] $N
[int[]] $V = New-Object int[] $N
for ($i = 0; $i -lt $N; $i++) {
    $T[$i], $V[$i] = [int[]][Console]::ReadLine().Split(" ")
}
[int] $time = 0
[int] $water = 0
for ([int] $i = 0; $i -lt $N; $i++) {
    $water = [Math]::Max(0, $water - $T[$i] + $time)
    $water += $V[$i]
    $time = $T[$i]
}
Write-Host $water