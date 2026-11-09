$N, $V = [uint32[]][Console]::ReadLine().Split()
$W = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
[uint32]$max = $zero
[bool]$found = $false
for ([uint32]$i = $zero; $i -le $N - $three; $i++) {
    for ([uint32]$j = $i + $one; $j -le $N - $two; $j++) {
        for ([uint32]$k = $j + $one; $k -le $N - $one; $k++) {
            $cost = ($i + $one) + ($j + $one) + ($k + $one)
            if ($cost -le $V) {
                $happiness = $W[$i] + $W[$j] + $W[$k]
                if (-not $found -or $happiness -gt $max) {
                    $max = $happiness
                    $found = $true
                }
            }
        }
    }
}
Write-Host $max
exit 0