function Get-Gcd {
    param (
        [int64]$a,
        [int64]$b
    )
    $result = [int64]$a
    $k = [int64]0
    $n = [int64]$b

    do {
        $k = [int64]($result % $n)
        $result = [int64]$n
        $n = [int64]$k
    } while ($k -ne 0)
    return $result
}

function Get-Lcm {
    param (
        [int64]$a,
        [int64]$b
    )
    $g = [int64](Get-Gcd -a $a -b $b)
    return [int64]($a * [Math]::Truncate($b / $g))
}

$a = [int64][Console]::ReadLine()
$b = [int64][Console]::ReadLine()
$n = [int64][Console]::ReadLine()
Set-Variable -Name "one" -value ([int64]1) -Option Constant
$lcm = [int64](Get-Lcm -a $a -b $b)
Write-Host ([int64]([Math]::Truncate(($lcm + $n - $one) / $lcm) * $lcm))
exit 0