$A = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host ([Math]::Floor($A / $two) * [Math]::Floor($A / $two))
exit 0