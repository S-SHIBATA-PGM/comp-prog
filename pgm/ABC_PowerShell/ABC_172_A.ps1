$a = [int][Console]::ReadLine()
Set-Variable -Name "two" -Value 2U -Option Constant
Set-Variable -Name "three" -Value 3U -Option Constant
Write-Host ($a + [Math]::pow($a, $two) + [Math]::pow($a, $three))
exit 0