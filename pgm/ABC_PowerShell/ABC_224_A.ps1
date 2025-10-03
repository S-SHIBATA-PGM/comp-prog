$S = [Console]::ReadLine()
Set-Variable -Name er -Value "er" -Option Constant
Set-Variable -Name ist -Value "ist" -Option Constant
if ($S.EndsWith($er)) {
    Write-Host $er
}
else {
    Write-Host $ist
}
exit 0