[int] $N, $C = [Console]::ReadLine().Split(" ")
[int[]] $T = [Console]::ReadLine().Split(" ")
[int] $pre = - $C
[int] $Candy = 0
for ($i = 0; $i -lt $N; $i++) {
    if ($T[$i] - $pre -ge $C) {
        $Candy++
        $pre = $T[$i]
    }
}
Write-Host $Candy