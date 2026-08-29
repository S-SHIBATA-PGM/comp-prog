$X, $Y = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Write-Host ($X * $one -shl $Y)
exit 0