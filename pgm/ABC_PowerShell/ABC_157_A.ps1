$N = [int][Console]::ReadLine()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Write-Host ([int][Math]::Ceiling($N / $two))
exit 0