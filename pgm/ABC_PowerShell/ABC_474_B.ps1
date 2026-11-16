$N = [uint32][Console]::ReadLine()
$P = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "ten" -Value ([uint32]10) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$group = New-Object uint32[] $N
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $group[$i] = [uint32][Math]::Floor(($P[$i] - $one) / $ten) + $one
}
[bool]$isValid = $true
for ([uint32]$i = $one; $i -lt $N; $i++) {
    if ($group[$i] -lt $group[$i - $one]) {
        $isValid = $false
        break
    }
}
if ($isValid) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0