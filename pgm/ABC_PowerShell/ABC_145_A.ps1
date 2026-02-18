$r = [int][Console]::ReadLine()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Write-Host ([Math]::Pow($r, $two))
exit 0