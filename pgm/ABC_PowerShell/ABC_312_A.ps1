$S = [string][Console]::ReadLine()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$list = @("ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD")
$S -in $list ? $Yes : $No
exit 0