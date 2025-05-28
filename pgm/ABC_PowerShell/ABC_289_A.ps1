Set-Variable -Name zero -Value "0" -Option Constant
Set-Variable -Name one -Value "1" -Option Constant
Set-Variable -Name dummy -Value "x" -Option Constant
$s = [Console]::ReadLine()
$flip = $s
$flip = $flip.Replace($zero, $dummy).Replace($one, $zero).Replace($dummy, $one)
Write-Host $flip
exit 0