$N = [Console]::ReadLine()
Set-Variable -Name "SAME" -value ([string]"SAME") -Option Constant
Set-Variable -Name "DIFFERENT" -value ([string]"DIFFERENT") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
if ([int]([char[]]$N | Sort-Object -Unique).Count -eq $one) {
    Write-Host $SAME
}
else {
    Write-Host $DIFFERENT
}
exit 0