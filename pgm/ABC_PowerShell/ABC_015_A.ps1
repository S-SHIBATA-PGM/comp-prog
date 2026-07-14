$A = [Console]::ReadLine()
$B = [Console]::ReadLine()
if ($A.Length -gt $B.Length) {
    Write-Host $A
}
else {
    Write-Host $B
}
exit 0