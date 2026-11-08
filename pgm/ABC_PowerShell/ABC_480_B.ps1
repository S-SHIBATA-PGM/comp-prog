$N, $M = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$S = @()
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $S += [Console]::ReadLine()
}
$T = @()
for ([uint32]$i = $zero; $i -lt $M; $i++) {
    $T += [Console]::ReadLine()
}
$vote = New-Object uint32[] $N
function CanMatch ([string]$s, [string]$t) {
    if ($s -eq $t) { return $true }
    $lenS = $s.Length
    $lenT = $t.Length
    if ($lenS -eq $lenT) {
        $diff = $zero
        for ([uint32]$k = $zero; $k -lt $lenS; $k++) {
            if ($s[$k] -ne $t[$k]) { $diff++ }
        }
        return $diff -eq $one
    }
    return $false
}
foreach ($tStr in $T) {
    $matchedIndex = - $one
    $matchCount = $zero
    for ([uint32]$i = $zero; $i -lt $N; $i++) {
        if ($S[$i] -eq $tStr) {
            $matchedIndex = $i
            $matchCount = $one
            break
        }
    }
    if ($matchCount -eq $zero) {
        for ([uint32]$i = $zero; $i -lt $N; $i++) {
            if (CanMatch $S[$i] $tStr) {
                $matchedIndex = $i
                $matchCount++
            }
        }
    }
    if ($matchCount -eq $one) {
        $vote[$matchedIndex]++
    }
}
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    Write-Host $vote[$i]
}
exit 0