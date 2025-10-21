Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name six -Value 6 -Option Constant
Set-Variable -Name plus -Value "+" -Option Constant
Set-Variable -Name minus -Value "-" -Option Constant
Set-Variable -Name dot -Value "\." -Option Constant
$X, $Y = [int[]]([Console]::ReadLine() -split $dot)
Write-Host -NoNewLine $X
if ($Y -le $two) {
    Write-Host -NoNewLine $minus
}
elseif ($Y -gt $six) {
    Write-Host -NoNewLine $plus
}
Write-Host
exit 0