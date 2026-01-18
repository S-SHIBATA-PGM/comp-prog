$alpha = [Console]::ReadLine()
Set-Variable -Name "upperA" -Value ([char]'A') -Option Constant
Set-Variable -Name "lowerA" -Value ([char]'a') -Option Constant
if ([char]::IsUpper($alpha)) {
    Write-Host A
}
else {
    Write-Host a
}
exit 0