$s = [Console]::ReadLine()
$i = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host "$($s[$i - $one])"
exit 0