$null = [Console]::ReadLine()
$S = [Console]::ReadLine()
Set-Variable -Name "caret" -Value ([string]"^") -Option Constant
Set-Variable -Name "plus" -Value ([string]"+") -Option Constant
Set-Variable -Name "o" -Value ([string]"o") -Option Constant
Set-Variable -Name "blank" -Value ([string]"") -Option Constant
$pattern = [string]::Concat($caret, $o, $plus)
Write-Host ($S -replace $pattern, $blank)
exit 0