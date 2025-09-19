$N = [int][Console]::ReadLine()
Set-Variable -Name AGC -Value "AGC" -Option Constant
Set-Variable -Name missing -Value 42 -Option Constant
Set-Variable -Name braceL -Value "{" -Option Constant
Set-Variable -Name braceR -Value "}" -Option Constant
Set-Variable -Name colon -Value ":" -Option Constant
Set-Variable -Name d -Value "d" -Option Constant
Set-Variable -Name digit -Value 3 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$value = $N
if ($N -ge $missing) {
    $value += $one
}
$fmt = $braceL + $zero + $colon + $d + $digit.ToString() + $braceR
Write-Host([String]::Concat($AGC, $fmt -f $value))
exit 