$N, $M = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Write-Host ([int][Math]::Truncate($N * ($N - $one) / $two) +
    [int][Math]::Truncate($M * ($M - $one) / $two))
exit 0