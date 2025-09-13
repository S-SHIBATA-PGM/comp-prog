function f {
    param([int]$t)
    return [Math]::pow($t, 2) + 2 * $t + 3
}
$t = [int][Console]::ReadLine()
Write-Host (f((f((f($t)) + $t)) + (f((f($t))))))
exit 0