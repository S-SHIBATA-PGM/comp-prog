$a = [uint32][Console]::ReadLine()
$b = [uint32][Console]::ReadLine()
Write-Host (($b - $a % $b) % $b)
exit 0