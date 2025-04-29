[int] $N = [Console]::ReadLine()
[int[]] $H = [Console]::ReadLine().Split(" ")
Set-Variable -Name no -Value -1 -Option Constant
[int[]] $idx = @(2..$N) | Where-Object { $H[0] -lt $H[$_ - 1] }
$idx += $no
Write-Host $idx[0]
exit 0