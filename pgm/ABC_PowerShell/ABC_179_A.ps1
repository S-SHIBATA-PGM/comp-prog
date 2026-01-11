$S = [Console]::ReadLine()
Set-Variable -Name "suffixEs" -Value "es" -Option Constant
Set-Variable -Name "suffixS" -Value "s" -Option Constant
Set-Variable -Name "blank" -Value "" -Option Constant
if ($S.EndsWith($suffixS)) {
    Write-Host ($S, $suffixEs -join $blank)
}
else {
    Write-Host ($S, $suffixS -join $blank)
}
exit 0