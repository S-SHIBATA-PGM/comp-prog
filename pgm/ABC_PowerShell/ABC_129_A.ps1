$P, $Q, $R = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
$PQR = @($P, $Q, $R)
Write-Host ($PQR |
    Sort-Object |
    Select-Object -First $two |
    Measure-Object -Sum
).Sum
exit 0