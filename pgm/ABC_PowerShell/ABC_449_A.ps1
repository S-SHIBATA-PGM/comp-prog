$D = [decimal][Console]::ReadLine()
Set-Variable -Name "two"  -Value ([decimal]2.0) -Option Constant
Write-Host ([Math]::PI * [Math]::Pow($D / $two, $two))
exit 0