$R = [int][Console]::ReadLine()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Write-Host ($two * [Math]::PI * $R)
exit 0