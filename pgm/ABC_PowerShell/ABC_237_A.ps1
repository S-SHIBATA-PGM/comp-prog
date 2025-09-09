$N = [double][Console]::ReadLine()
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name thirtyone -Value 31 -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($N -ge - [Math]::Pow($two, $thirtyone) -and
    $N -lt [Math]::Pow($two, $thirtyone)) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0