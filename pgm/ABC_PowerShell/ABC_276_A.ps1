$S = [Console]::ReadLine()
Set-Variable -Name a -Value "a" -Option Constant
Set-Variable -Name no -Value -1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$idx = $S.LastIndexOf($a)
if ($idx -lt $zero) {
    Write-Host $no
}
else {
    Write-Host ($S.LastIndexOf($a) + 1)
}
exit 0