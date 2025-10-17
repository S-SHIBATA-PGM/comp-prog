$N = [int][Console]::ReadLine()
$S = [Console]::ReadLine()
Set-Variable -Name circle -Value "o" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
if ($S[$N - $one] -ceq $circle) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0