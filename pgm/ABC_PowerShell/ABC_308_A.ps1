Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name lower -Value 100 -Option Constant
Set-Variable -Name upper -Value 675 -Option Constant
Set-Variable -Name multiple -Value 25 -Option Constant
[int[]][Console]::ReadLine().Split(" ") | ForEach-Object -Begin {
    $allFlg = $true
    $allFlg > $null
    $pre = -1
    $pre > $null
} -Process {
    $allFlg = $allFlg -and
    $pre -le $_ -and
    $lower -le $_ -and
    $_ -le $upper -and
    $_ % $multiple -eq 0
    $pre = $_
} -End {
    Write-Host ($allFlg ? $Yes : $No)
}