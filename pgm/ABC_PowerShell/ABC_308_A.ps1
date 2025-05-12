Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name lower -Value 100 -Option Constant
Set-Variable -Name upper -Value 675 -Option Constant
Set-Variable -Name multiple -Value 25 -Option Constant
$allFlg = $true
$pre = -1
$S = [int[]][Console]::ReadLine().Split(" ") | Where-Object {
    $allFlg = $allFlg -and
    $pre -le $_ -and
    $lower -le $_ -and
    $_ -le $upper -and
    $_ % $multiple -eq 0
    $pre = $_
    return $allFlg
}
Write-Host ($S.Count -eq 8 ? $Yes : $No)
exit 0