$S, $A, $B, $X = [uint32[]][Console]::ReadLine().Split()
Write-Host (
    $S * $A * [uint32][Math]::Truncate($X / ($A + $B)) + 
    $S * [Math]::Min($A, $X % ($A + $B))
)
exit 0