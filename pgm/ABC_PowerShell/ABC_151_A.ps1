$C = [int][char][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Write-Host ([char]($C + $one))
exit 0