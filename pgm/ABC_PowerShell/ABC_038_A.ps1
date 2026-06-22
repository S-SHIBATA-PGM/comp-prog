$S = [Console]::ReadLine()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "T" -value ([string]"T") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
If ($S[$S.Length - $one] -ceq $T) {
    Write-Host $YES
}
else {
    Write-Host $NO
}
exit 0