[int] $N = [Console]::ReadLine()
[char[]] $S = [Console]::ReadLine().ToCharArray()
Set-Variable -Name sharp -Value '#' -Option Constant
Set-Variable -Name dot -Value '.' -Option Constant
[int] $cnt = 0
for ([int]$i = 0; $i -lt $N - 2; $i++) {
    if ($S[$i] -eq $sharp -and
        $S[$i + 1] -eq $dot -and
        $S[$i + 2] -eq $sharp) {
        $cnt++
    }
}
Write-Host $cnt