$x, $y = [int[]][Console]::ReadLine().Split()
Set-Variable -Name three -Value 3 -Option Constant
if ($x -eq $y) {
    Write-Host $x
}
else {
    Write-Host ($three - $x - $y)
}
exit 0