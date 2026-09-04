$W, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "thousand" -Value ([uint32]1000) -Option Constant
Write-Host ([uint32][Math]::Truncate($W * $thousand / $B + $one));
exit 0