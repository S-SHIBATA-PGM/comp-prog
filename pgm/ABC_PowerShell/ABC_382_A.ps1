[int] $D = [Console]::ReadLine().Split(" ")[1]
[char[]] $S = [Console]::ReadLine().ToCharArray()
Set-Variable -Name dot -Value '.' -Option Constant
Write-Host (($S -eq $dot).Count + $D)