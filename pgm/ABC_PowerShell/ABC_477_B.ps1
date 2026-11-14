$N, $D = [uint32[]][Console]::ReadLine().Split()
$X = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "space" -Value ([string]" ") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$indices = $zero..($N - $one) | Sort-Object { $X[$_] }
$X_sorted = New-Object uint32[] $N
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $X_sorted[$i] = $X[$indices[$i]]
}
$l = New-Object uint32[] $N
$r = New-Object uint32[] $N
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $l[$i] = [uint32]::MaxValue
    $r[$i] = [uint32]::MaxValue
}
for ([uint32]$i = $one; $i -lt $N; $i++) {
    $diff = $X_sorted[$i] - $X_sorted[$i - 1]
    $l[$i] = $diff
    $r[$i - $one] = $diff
}
$is_valid = New-Object bool[] $N
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $minDist = [Math]::Min($l[$i], $r[$i])
    if ($minDist -ge $D) {
        $is_valid[$i] = $true
    }
    else {
        $is_valid[$i] = $false
    }
}
$people = @()
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    if ($is_valid[$i]) {
        $idx = $indices[$i] + $one
        $people += $idx
    }
}
$people = $people | Sort-Object
$K = $people.Count
Write-Host $K
if ($K -gt $zero) {
    Write-Host ($people -join $space)
}
else {
    Write-Host
}
exit 0