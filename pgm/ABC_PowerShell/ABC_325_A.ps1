$S, $T = [string[]][Console]::ReadLine().Split(" ")
Set-Variable -Name space -Value ' ' -Option Constant
Set-Variable -Name san -Value "san" -Option Constant
"$S$space$san"
exit 0