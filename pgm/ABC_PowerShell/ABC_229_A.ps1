$S1 = [Console]::ReadLine()
$S2 = [Console]::ReadLine()
Set-Variable -Name sharp -Value "#" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
if ($S1[$zero] -ceq $sharp -and 
    $S1[$one] -cne $sharp -and
    $S2[$zero] -cne $sharp -and
    $S2[$one] -ceq $sharp) {
    Write-Host($No)
}
elseif ($S1[$zero] -cne $sharp -and
    $S1[$one] -ceq $sharp -and
    $S2[$zero] -ceq $sharp -and
    $S2[$one] -cne $sharp) {
    Write-Host($No)
}
else {
    Write-Host($Yes)
}
exit 0