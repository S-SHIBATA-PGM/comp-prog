[Console]::ReadLine() > $null
$S = [Console]::ReadLine().ToCharArray()
Set-Variable -Name good -Value 'o' -Option Constant
Set-Variable -Name failing -Value 'x' -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Write-Host ($good -in $S -and $failing -notin $S ? $Yes : $No)
exit 0