$abc = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([int]1)
Set-Variable -Name "two" -value ([int]2)
Set-Variable -Name "ten" -value ([int]10)
Set-Variable -Name "zero" -value ([int]0)
$abc = $abc | Sort-Object -Descending
Write-Host ($ten * $abc[$zero] + $abc[$one] + $abc[$two])
exit 0