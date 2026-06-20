$n, $x = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ([Math]::Min($x - $one, $n - $x))
exit 0