$N = [int][Console]::ReadLine()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name hundred -Value 100 -Option Constant
if ($N % $hundred) {
    Write-Host ([Math]::floor($N / $hundred) + $one)
}
else {
    Write-Host ($N / $hundred)
}
exit 0