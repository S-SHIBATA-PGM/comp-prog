$S = [Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Write-Host ($S.Remove([Math]::Truncate(($S.Length + $one) / $two) - $one, $one))
exit 0