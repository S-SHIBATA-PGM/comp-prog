$A, $B, $C, $K = [uint32[]][Console]::ReadLine().Split()
$S, $T = [uint32[]][Console]::ReadLine().Split()
if ($S + $T -ge $K) {
    Write-Host ($S * $A + $T * $B - $C * ($S + $T))
}
else {
    Write-Host ($S * $A + $T * $B)
}
exit 0