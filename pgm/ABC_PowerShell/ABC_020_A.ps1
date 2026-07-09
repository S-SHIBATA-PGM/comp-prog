$Q = [uint32][Console]::ReadLine()
Set-Variable -Name "ABC" -value ([string]"ABC") -Option Constant
Set-Variable -Name "chokudai" -value ([string]"chokudai") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
if ($Q -eq $one) {
    Write-Host $ABC
}
else {
    Write-Host $chokudai
}
exit 0