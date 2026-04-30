$A, $B, $C, $D = [uint32[]]@($input)
Write-Host ([Math]::Min($A, $B) + [Math]::Min($C, $D))
exit 0