$S = [char[]][Console]::ReadLine().ToCharArray()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
if (($S | Select-Object -Unique).Count -eq $three) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0