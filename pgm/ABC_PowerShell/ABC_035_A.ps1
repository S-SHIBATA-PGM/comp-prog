$W, $H = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "aspectRatio43" -value ([string]"4:3") -Option Constant
Set-Variable -Name "aspectRatio169" -value ([string]"16:9") -Option Constant
Set-Variable -Name "three" -value ([uint32]"3") -Option Constant
Set-Variable -Name "four" -value ([uint32]"4") -Option Constant
if ($three * $W -eq $four * $H) {
    Write-Host $aspectRatio43
}
else {
    Write-Host $aspectRatio169
}
exit 0