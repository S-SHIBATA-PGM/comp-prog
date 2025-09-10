$S = [Console]::ReadLine().ToCharArray()
$a, $b = [int[]][Console]::ReadLine().Split()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name blank -Value "" -Option Constant
$S[$a - $one], $S[$b - $one] = $S[$b - $one], $S[$a - $one]
Write-Host ($S -join $blank)
exit 0