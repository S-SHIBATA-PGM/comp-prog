[Console]::ReadLine() > $null
Set-Variable -Name and -Value "and" -Option Constant
Set-Variable -Name not -Value "not" -Option Constant
Set-Variable -Name that -Value "that" -Option Constant
Set-Variable -Name the -Value "the" -Option Constant
Set-Variable -Name you -Value "you" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$keyword = @($and, $not, $that, $the, $you)
$breakFlg = $false
[string[]][Console]::ReadLine().Split(" ") | ForEach-Object {
    if ($_ -in $keyword) {
        $breakFlg = $true
        $breakFlg > $null
        return
    }
}
if ($breakFlg) {
    Write-Host Yes
}
else {
    Write-Host No
}
exit 0