$x, $y = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Better" -value ([string]"Better") -Option Constant
Set-Variable -Name "Worse" -value ([string]"Worse") -Option Constant
if ($x -lt $y) {
    Write-Host $Better
}
else {
    Write-Host $Worse
}
exit 0