$N = [Console]::ReadLine()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
if (-join $N.ToCharArray()[($N.Length - $one)..$zero] -eq $N) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0