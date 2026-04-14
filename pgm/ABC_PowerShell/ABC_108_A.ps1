$K = [int][Console]::ReadLine()
Set-Variable -Name "two" -value ([int]2)
Write-Host ([Math]::truncate($K / $two) *
    ([Math]::truncate($K / $two) + $K % $two))
exit 0