$A, $B, $C, $D = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name TAKAHASHI -value ([string]"TAKAHASHI") -Option Constant
Set-Variable -Name AOKI -value ([string]"AOKI") -Option Constant
Set-Variable -Name DRAW -value ([string]"DRAW") -Option Constant
if ($B * $C -gt $A * $D) {
    Write-Host $TAKAHASHI
}
elseif ($B * $C -lt $A * $D) {
    Write-Host $AOKI
}
else {
    Write-Host $DRAW
}
exit 0