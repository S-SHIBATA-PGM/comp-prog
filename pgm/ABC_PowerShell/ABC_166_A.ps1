$S = [Console]::ReadLine()
Set-Variable -Name "ABC" -Value "ABC" -Option Constant
Set-Variable -Name "ARC" -Value "ARC" -Option Constant
if ($S -ceq $ABC) {
    Write-Host $ARC
}
else {
    Write-Host $ABC
}
exit 0