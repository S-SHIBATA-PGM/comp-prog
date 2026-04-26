$a, $b = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
if ($a -le $b) {
    Write-Host $a
}
else {
    Write-Host ($a - $one)
}
exit 0