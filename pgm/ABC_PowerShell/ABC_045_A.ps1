$a = [uint32][Console]::ReadLine()
$b = [uint32][Console]::ReadLine()
$h = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host (($a + $b) * $h / $two)
exit 0