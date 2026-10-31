$S = [Console]::ReadLine()
Set-Variable -Name "caret" -Value ([string]"^") -Option Constant
Set-Variable -Name "dot" -Value ([string]".") -Option Constant
Set-Variable -Name "lbrack" -Value ([string]"[") -Option Constant
Set-Variable -Name "rbrack" -Value ([string]"]") -Option Constant
Set-Variable -Name "A" -Value ([string]"A") -Option Constant
$pattern = "$lbrack$caret$A$rbrack"
Write-Host ([System.Text.RegularExpressions.Regex]::Replace($S, $pattern, $dot))
exit 0