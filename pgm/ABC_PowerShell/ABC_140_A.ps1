$N = [int][Console]::ReadLine()  
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
Write-Host ([Math]::Pow($N, $three))
exit 0