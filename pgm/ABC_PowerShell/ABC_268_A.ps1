$A, $B, $C, $D, $E = [int[]][Console]::ReadLine().Split()
$set = @{}
$set[$A] = $true
if (-not $set.Contains($B)) {
    $set[$B] = $true
}
if (-not $set.Contains($C)) {
    $set[$C] = $true
}
if (-not $set.Contains($D)) {
    $set[$D] = $true
}
if (-not $set.Contains($E)) {
    $set[$E] = $true
}
Write-Host $set.Count
exit 0