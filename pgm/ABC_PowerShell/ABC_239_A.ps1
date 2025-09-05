$H = [decimal][Console]::ReadLine()
Set-Variable -Name precision -Value 9 -Option Constant
Set-Variable -Name additional -Value 12800000 -Option Constant
Set-Variable -Name braceL -Value "{" -Option Constant
Set-Variable -Name braceR -Value "}" -Option Constant
Set-Variable -Name dot -Value "." -Option Constant
Set-Variable -Name f -Value "f" -Option Constant
Set-Variable -Name per -Value "%" -Option Constant
Set-Variable -Name zero -Value "0" -Option Constant
Set-Variable -Name colon -Value ":" -Option Constant
$fmt = $braceL + $zero + $colon + $f + $precision.ToString() + $braceR
$value = [decimal][Math]::Sqrt($H * ($additional + $H))
Write-Host ($fmt -f $value)
exit 0