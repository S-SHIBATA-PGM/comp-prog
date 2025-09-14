$X, $Y = [decimal[]][Console]::ReadLine().Split()
Set-Variable -Name ten -Value 10 -Option Constant
Set-Variable -Name z -Value 0.0 -Option Constant
Set-Variable -Name precision -Value 0 -Option Constant
Set-Variable -Name braceL -Value "{" -Option Constant
Set-Variable -Name braceR -Value "}" -Option Constant
Set-Variable -Name dot -Value "." -Option Constant
Set-Variable -Name f -Value "f" -Option Constant
Set-Variable -Name per -Value "%" -Option Constant
Set-Variable -Name zero -Value "0" -Option Constant
Set-Variable -Name colon -Value ":" -Option Constant
$fmt = $braceL + $zero + $colon + $f + $precision.ToString() + $braceR
$value = [decimal][Math]::Max($z, [Math]::Ceiling(($Y - $X) / $ten))
Write-Host ($fmt -f $value)
exit 