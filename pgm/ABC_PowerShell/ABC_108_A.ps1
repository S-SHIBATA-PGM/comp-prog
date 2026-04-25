$K = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host ([Math]::truncate($K / $two) *
    ([Math]::truncate($K / $two) + $K % $two))
exit 0