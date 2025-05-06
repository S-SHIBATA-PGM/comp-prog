[Console]::ReadLine() > $null
$S = [string][Console]::ReadLine()
Set-Variable -Name ABC -Value "ABC" -Option Constant
Set-Variable -Name No -Value -1 -Option Constant
if ($S.IndexOf($ABC) -lt 0) {
    $No
}
else {
    $S.IndexOf($ABC) + 1
}
exit 0