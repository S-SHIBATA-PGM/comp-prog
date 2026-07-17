$a = [uint32][Console]::ReadLine()
$b = [uint32][Console]::ReadLine()
Write-Host (($B - $A % $B) % $B)
exit 0