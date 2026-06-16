$N = [uint32][Console]::ReadLine()
$K = [uint32][Console]::ReadLine()
$X = [uint32][Console]::ReadLine()
$Y = [uint32][Console]::ReadLine()
Set-Variable -Name "zero" -value ([int32]0) -Option Constant
Write-Host ($X * [Math]::Min($N, $K) + [Math]::Max($zero, $Y * ($N - $K)))
exit 0