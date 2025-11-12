$ABC = [int[]][Console]::ReadLine().Split()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$ABC = $ABC | Sort-Object -Descending
Write-Host ($ABC[$zero] + $ABC[$one])
exit 0