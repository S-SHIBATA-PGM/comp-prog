$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
$dt = [DateTime]::new([uint32]$([DateTime]::Now.Year), $N, $one)
Write-Host ($([DateTime]$dt.AddMonths($one)).Month)
exit 0