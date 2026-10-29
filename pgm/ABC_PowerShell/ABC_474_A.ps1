$X = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$candidate = @($one, $two, $three)
Write-Host ($candidate | Where-Object { $_ -ne $X })[$zero]
exit 0