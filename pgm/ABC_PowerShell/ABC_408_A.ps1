$N, $S = [int32[]][Console]::ReadLine().Split()
$T = [int32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "zero" -Value ([int32]0) -Option Constant
$prev = $zero
$isAwake = $true
foreach ($t in $T) {
    if ($S -lt ($t - $prev)) {
        $isAwake = $false
        break
    }
    $prev = $t
}
if ($isAwake) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0