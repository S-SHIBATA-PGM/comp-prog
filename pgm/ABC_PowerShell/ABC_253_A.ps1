Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$abc = New-Object 'int[]' $three
$abc[$zero], $abc[$one], $abc[$two] = [int[]][Console]::ReadLine().Split()
$b = $abc[$one]
$abc = $abc | Sort-Object
if ($b -eq $abc[$one]) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0