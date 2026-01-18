$a = [int][Console]::ReadLine()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
Write-Host ($a + [Math]::pow($a, $two) + [Math]::pow($a, $three))
exit 0