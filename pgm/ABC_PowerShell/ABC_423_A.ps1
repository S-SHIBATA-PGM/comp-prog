$X, $C = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "thousand" -Value ([uint32]1000) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
Write-Host ($thousand * [uint32][Math]::Truncate($X / ($thousand + $C)))
exit 0