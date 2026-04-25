$N, $K = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ([Math]::min($N % $K, $one))
exit 0