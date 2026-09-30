$X, $Y = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
$dt = [DateTime]::new([DateTime]::Today.Year, $one, $one)
Write-Host $dt.AddMonths($X + $Y - $one).Month
exit 0