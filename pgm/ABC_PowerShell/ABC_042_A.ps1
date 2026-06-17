$ABC = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO")  -Option Constant
Set-Variable -Name "go" -value ([uint32]5) -Option Constant
Set-Variable -Name "shichi" -value ([uint32]7) -Option Constant
if ([System.Linq.Enumerable]::SequenceEqual(
        [uint32[]]($ABC | Sort-Object), ([uint32[]]@($go, $go, $shichi)))) {
    Write-Host $YES
}
else {
    Write-Host $NO
}
exit 0