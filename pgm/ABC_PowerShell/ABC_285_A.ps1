$a, $b = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($a * 2 -eq $b -or $a * 2 + 1 -eq $b) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0