$S = [Console]::ReadLine()
Set-Variable -Name "caret" -Value ([string]"^") -Option Constant
Set-Variable -Name "hyphen" -Value ([string]"-") -Option Constant
Set-Variable -Name "lbrack" -Value ([string]"[") -Option Constant
Set-Variable -Name "rbrack" -Value ([string]"]") -Option Constant
Set-Variable -Name "A" -Value ([string]"A") -Option Constant
Set-Variable -Name "Z" -Value ([string]"Z") -Option Constant
Set-Variable -Name "blank" -Value ([string]"") -Option Constant
$pattern = "$lbrack$caret$A$hyphen$Z$rbrack"
Write-Host (
    [System.Text.RegularExpressions.Regex]::Replace($S, $pattern, $blank))
exit 0