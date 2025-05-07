$S = [string][Console]::ReadLine()
Set-Variable -Name a -Value "a" -Option Constant
Set-Variable -Name e -Value "e" -Option Constant
Set-Variable -Name i -Value "i" -Option Constant
Set-Variable -Name o -Value "o" -Option Constant
Set-Variable -Name u -Value "u" -Option Constant
$reg = "{0}{1}{2}{3}{4}{5}{6}" -f "[", $a, $e, $i, $o, $u, "]"
Write-Host ([regex]::Replace($S, $reg, ""))
exit 0