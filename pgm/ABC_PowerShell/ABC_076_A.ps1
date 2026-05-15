$R = [uint32][Console]::ReadLine()
$G = [uint32][Console]::ReadLine()
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Write-Host ($G * $two - $R)
exit 0