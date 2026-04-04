$A, $B = [int[]][Console]::ReadLine().Split()
if ($B % $A) {
    Write-Host ($B - $A)
}
else {
    Write-Host ($B + $A)
}
exit 0