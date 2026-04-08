$X = [int][Console]::ReadLine()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "shichi" -value ([uint32]7) -Option Constant
Set-Variable -Name "go" -value ([uint32]5) -Option Constant
Set-Variable -Name "san" -value ([uint32]3) -Option Constant
$shichigosan = @($shichi, $go, $san)
if ($X -in $shichigosan) {
    Write-Host $YES
}
else {
    Write-Host $NO
}
exit 0