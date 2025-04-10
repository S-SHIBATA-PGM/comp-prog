[int] $N, [string] $c1, [string] $c2 = [Console]::ReadLine().Split(" ")
[char[]] $S = [Console]::ReadLine().ToCharArray()
for ($i = 0; $i -lt $N; $i++) {
    if ($S[$i] -ne $c1) {
        $S[$i] = $c2
    }
}
Write-Host (-join $S)