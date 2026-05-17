$N = [uint32][Console]::ReadLine()
$A = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host ([Math]::Pow($N, $two) - $A)
exit 0