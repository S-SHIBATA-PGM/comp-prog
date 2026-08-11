$S = [Console]::ReadLine()
$N = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host $S.Substring($N, $S.Length - $N * $two)
exit 0