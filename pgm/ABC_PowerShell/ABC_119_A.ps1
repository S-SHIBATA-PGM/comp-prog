$S = [Console]::ReadLine().Split()
Set-Variable -Name "boundaryDate" -value ([string]"2019/04/30") -Option Constant
Set-Variable -Name "Heisei" -value ([string]"Heisei") -Option Constant
Set-Variable -Name "TBD" -value ([string]"TBD") -Option Constant
if ($S -cle $boundaryDate) {
    Write-Host $Heisei
}
else {
    Write-Host $TBD
}