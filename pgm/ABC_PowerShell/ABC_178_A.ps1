$x = [int][Console]::ReadLine()
Set-Variable -Name "one" -Value 1U -Option Constant
Write-Host ($x -bxor $one)
exit 0