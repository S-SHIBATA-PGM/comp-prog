$a, $b = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "H" -value ([string]"H") -Option Constant
Set-Variable -Name "D" -value ([string]"D") -Option Constant
if ($a -ceq $H) {
    Write-Host $b
}
elseif ($b -ceq $H) {
    Write-Host $D
}
else {
    Write-Host $H
}
exit 0