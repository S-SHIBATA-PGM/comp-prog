$N = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2)
if ($N % $two) {
    Write-Host ($N * $two)
}
else {
    Write-Host $N
}
exit 0