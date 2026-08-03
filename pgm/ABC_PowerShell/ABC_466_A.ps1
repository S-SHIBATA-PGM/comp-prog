$null = [Console]::ReadLine()
$X = [int32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$allNegative = $true
for ($i = $zero; $i -lt $X.Length; $i++) {
    if ($X[$i] -ge $zero) {
        $allNegative = $false
        break
    }
}
Write-Host ($allNegative ? $Yes : $No)
exit 0