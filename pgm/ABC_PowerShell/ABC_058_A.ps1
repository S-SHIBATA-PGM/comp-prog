$abc = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$dif = for ($i = $zero; $i -lt ($abc.Length - $one); $i++) {
    $abc[$i + 1] - $abc[$i]
}
if (($dif | Select-Object -Unique).Count -eq $one) {
    Write-Host $YES
}
else {
    Write-Host $NO
}
exit 0