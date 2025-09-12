$abc = [Console]::ReadLine()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$a, $b, $c = $abc[$zero], $abc[$one], $abc[$two]
$bca = "{$zero}{$one}{$two}" -f $b, $c, $a
$cab = "{$zero}{$one}{$two}" -f $c, $a, $b
Write-Host ([int]$abc + [int]$bca + [int]$cab)
exit 0