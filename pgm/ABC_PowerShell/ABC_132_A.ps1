$S = [char[]]([Console]::ReadLine())
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
$flg = $true
foreach ($group in $S | Group-Object) {
    if ($group.Count -ne 2) {
        $flg = $false
        break
    }
}
if ($flg) {
    Write-Host "Yes"
}
else {
    Write-Host "No"
}
exit 0