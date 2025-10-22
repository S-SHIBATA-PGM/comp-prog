Set-Variable -Name hello -Value "Hello,World!" -Option Constant
Set-Variable -Name AC -Value "AC" -Option Constant
Set-Variable -Name WA -Value "WA" -Option Constant
$S = [Console]::ReadLine()
if ($S -ceq $hello) {
    Write-Host $AC
}
else {
    Write-Host $WA
}
exit 0