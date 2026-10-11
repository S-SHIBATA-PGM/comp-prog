[void][Console]::ReadLine()
$S = [Console]::ReadLine()
$T = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "cCircle" -Value ([char]'o') -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$found = $false
$len = $S.Length
for ($i = $zero; $i -lt $len; $i++) {
    if (($S[$i] -ceq $cCircle) -and ($T[$i] -ceq $cCircle)) {
        $found = $true
        break
    }
}
if ($found) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0