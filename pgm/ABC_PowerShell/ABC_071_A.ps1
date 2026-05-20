$x, $smallA, $smallb = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "A" -value ([string]"A") -Option Constant
Set-Variable -Name "B" -value ([string]"B") -Option Constant
if ([Math]::Abs($x - $smallA) -lt [Math]::Abs($x - $smallB)) {
    Write-Host $A
}
else {
    Write-Host $B
}
exit 0