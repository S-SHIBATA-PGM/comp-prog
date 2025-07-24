$N = [int][Console]::ReadLine()
Set-Variable -Name two -Value 2 -Option Constant
Write-Host ([Math]::Pow($two, $N))
exit 0