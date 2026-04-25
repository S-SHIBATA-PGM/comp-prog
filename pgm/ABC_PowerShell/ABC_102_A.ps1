$N = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
if ($N % $two) {
    Write-Host ($N * $two)
}
else {
    Write-Host $N
}
exit 0