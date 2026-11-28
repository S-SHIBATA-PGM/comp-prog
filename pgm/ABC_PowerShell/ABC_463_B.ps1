[uint32]$N, [char]$X = [Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "cA" -Value ([char]'A') -Option Constant
Set-Variable -Name "cO" -Value ([char]'o') -Option Constant
[uint32]$targetIdx = [uint32]([int32]$X - [int32]$cA)
[bool]$hasO = $false
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $S = [Console]::ReadLine()
    if ($S[$targetIdx] -ceq $cO) {
        $hasO = $true
        break
    }
}
if ($hasO) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0