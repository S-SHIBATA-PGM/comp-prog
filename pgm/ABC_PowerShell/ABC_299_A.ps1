[Console]::ReadLine() > $null
$S = [string][Console]::ReadLine()
Set-Variable -Name dot -Value "." -Option Constant
Set-Variable -Name bar -Value "|" -Option Constant
Set-Variable -Name ast -Value "*" -Option Constant
Set-Variable -Name in -Value "in" -Option Constant
Set-Variable -Name out -Value "out" -Option Constant
$reg = @("\", $bar, "\", $dot, "*\", $ast, "\", $dot, "*\", $bar)
$S -match [string]::Join("", $reg) ? $in : $out 
exit 0