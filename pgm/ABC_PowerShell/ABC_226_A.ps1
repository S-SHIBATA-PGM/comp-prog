$X = [decimal][Console]::ReadLine()
Set-Variable -Name zero -Value 0 -Option Constant
Write-Host([Math]::Round($X, $zero, [MidpointRounding]::AwayFromZero))
exit 0