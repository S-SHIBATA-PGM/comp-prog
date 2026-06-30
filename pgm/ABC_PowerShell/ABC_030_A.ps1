$A, $B, $C, $D = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name TAKAHASHI -value ([string]"TAKAHASHI")
Set-Variable -Name AOKI -value ([string]"AOKI")
Set-Variable -Name DRAW -value ([string]"DRAW")
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