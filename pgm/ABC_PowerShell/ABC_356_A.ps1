[int] $N, [int] $L, [int] $R = [Console]::ReadLine().Split(" ")
[int[]] $arr = @(1..$N)
[int[]] $lr = @($L..$R)
[int[]] $rl = $lr | Sort-Object -Descending
Set-Variable -Name space -Value " " -Option Constant
[int] $idx = 0
[string] $s = ""
foreach ($a1 in $arr) {
    if ($idx -ge $L - 1) {
        break
    }
    else {
        $idx++
        Write-Host -NoNewline $s
        Write-Host -NoNewline $a1
        $s = $space
    }
}
foreach ($num in $rl) {
    Write-Host -NoNewline $s
    Write-Host -NoNewline $num
    $s = $space
}
$idx = 0
foreach ($a2 in $arr) {
    if ($idx -le $R - 1) {
        $idx++
        continue
    }
    else {
        $idx++
        Write-Host -NoNewline $s
        Write-Host -NoNewline $a2
        $s = $space
    }
}
Write-Host
exit 0