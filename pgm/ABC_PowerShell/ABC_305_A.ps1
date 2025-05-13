$N = [int][Console]::ReadLine()
Set-Variable -Name five -Value 5 -Option Constant
if ($five - $N % $five -lt $N % $five) {
    Write-Host ($N + $five - $N % $five)
}
else {
    Write-Host ($N - $N % $five)
}
exit 0