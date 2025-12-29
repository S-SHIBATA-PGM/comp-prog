$N = [int][Console]::ReadLine()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
if ($zero -lt $N - $one) {
    Write-Host ($N - $one)
}
else {
    Write-Host $zero
}
exit 0