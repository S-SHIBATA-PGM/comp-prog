Set-Variable -Name "tenthsBase" -value ([uint32]10) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$sum = $zero
while ($line = [string][Console]::ReadLine()) {
    $s, $e = [uint32[]]$line.Split()
    $sum += $s * ($e / $tenthsBase)
}
Write-Host ($sum)
exit 0