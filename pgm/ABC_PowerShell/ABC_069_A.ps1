$n, $m = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host (($n - $one) * ($m - $one))
exit 0