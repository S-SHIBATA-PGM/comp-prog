$X = [int][Console]::ReadLine()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
Set-Variable -Name "thirty" -Value 30U -Option Constant
if ($X -ge $thirty) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0