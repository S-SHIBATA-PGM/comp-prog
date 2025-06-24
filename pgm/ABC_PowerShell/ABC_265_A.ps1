$X, $Y, $N = [int[]][Console]::ReadLine().Split()
Set-Variable -Name three -Value 3 -Option Constant
[int]$remainder = 0
$quotient = [math]::DivRem($N, $three, [ref]$remainder)
if ($X * $three -lt $Y) {
    Write-Host ($X * $N)
}
else {
    Write-Host ($X * $remainder + $Y * $quotient)
}
exit 0