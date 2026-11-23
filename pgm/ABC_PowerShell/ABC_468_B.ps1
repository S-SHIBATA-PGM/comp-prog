$M, $D = [uint32[]][Console]::ReadLine().Split()
$S = [Console]::ReadLine()
Set-Variable -Name "cG" -Value ([char]'G') -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$isWatched = New-Object bool[] $M
for ([uint32]$i = $zero; $i -lt $M; $i++) {
    if ($S[$i] -ceq $cG) {
        [uint32]$left = [Math]::Max($zero, $i - $D)
        [uint32]$right = [Math]::Min($M - $one, $i + $D)
        for ([uint32]$j = $left; $j -le $right; $j++) {
            $isWatched[$j] = $true
        }
    }
}
[uint32]$cnt = $zero
for ([uint32]$i = $zero; $i -lt $M; $i++) {
    if (-not $isWatched[$i]) {
        $cnt += $one
    }
}
Write-Host $cnt
exit 0