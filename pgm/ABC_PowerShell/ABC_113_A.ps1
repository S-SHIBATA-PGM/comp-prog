$X, $Y = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host ($X + $Y / $two)
exit 0