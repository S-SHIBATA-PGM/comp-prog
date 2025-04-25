[int] $R, [int] $G, [int] $B = [Console]::ReadLine().Split(" ")
[string] $C = [Console]::ReadLine()
Set-Variable -Name Red -Value "Red" -Option Constant
Set-Variable -Name Green -Value "Green" -Option Constant
Set-Variable -Name Blue -Value "Blue" -Option Constant
$hash = @{ $Red = $R; $Green = $G; $Blue = $B }
# $dict = [ordered]@{ $Red = $R; $Green = $G; $Blue = $B }
$h = $hash.GetEnumerator() | Where-Object { $_.Key -ne $C }
$h = $h | Select-Object -ExpandProperty Value | Sort-Object
Write-Host $h[0]
exit 0