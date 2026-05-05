$a, $b = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Odd" -value ([string]"Odd") -Option Constant
Set-Variable -Name "Even" -value ([string]"Even") -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
if ($a * $b % $two) {
    Write-Host Odd
}
else {
    Write-Host Even
}
exit 0