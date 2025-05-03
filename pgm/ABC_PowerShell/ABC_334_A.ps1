$B, $G = [int[]][Console]::ReadLine().Split(" ")
Set-Variable -Name Bat -Value "Bat" -Option Constant
Set-Variable -Name Glove -Value "Glove" -Option Constant
$B -gt $G ? $Bat : $Glove
exit 0