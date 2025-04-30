$S = [Console]::ReadLine().Split(" ")
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name end -Value 349 -Option Constant
Set-Variable -Name ng -Value 316 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$num = [int]$S.Substring(3, 3)
$condition = $num -le $end -and $num -ne $ng -and $num -ne $zero
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]
exit 0