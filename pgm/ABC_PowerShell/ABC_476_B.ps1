[void][Console]::ReadLine()
$S = [Console]::ReadLine()
$T = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "asterisk" -Value ([char]'*') -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
[bool]$isValid = $true
$len = $S.Length
for ([uint32]$i = $zero; $i -lt $len; $i++) {
    if ($T[$i] -ne $asterisk -and $S[$i] -cne $T[$i]) {
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