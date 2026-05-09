$a, $b = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host ([Math]::ceiling(($a + $b) / $two))
exit 0