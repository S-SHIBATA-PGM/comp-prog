$S = [Console]::ReadLine()
$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ("$($S.Substring([Math]::Truncate(($N - $one) / $S.Length), $one))" + `
        "$($S.Substring(($N - $one) % $S.Length, $one))")
exit 0