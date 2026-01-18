$x = [int][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Write-Host ($x -bxor $one)
exit 0