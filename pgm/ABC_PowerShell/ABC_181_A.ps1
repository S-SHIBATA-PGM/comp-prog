$N = [int][Console]::ReadLine()
Set-Variable -Name "White" -Value "White" -Option Constant
Set-Variable -Name "Black" -Value "Black" -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
if ($N % $two -eq $zero) {
    Write-Host $White
}
else {
    Write-Host $Black
}
exit 0