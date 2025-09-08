$n = [int][Console]::ReadLine()
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ([Math]::Pow($two, $n) -gt [Math]::Pow($n, $two)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0