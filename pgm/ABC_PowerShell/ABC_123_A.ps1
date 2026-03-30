Set-Variable -Name "no" -value ([string]":(") -Option Constant
Set-Variable -Name "Yay" -value ([string]"Yay!") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "six" -value ([uint32]6) -Option Constant
$a, $b, $c, $d, $e, $k = $one..$six |
ForEach-Object { [int][Console]::ReadLine() }
if ($e - $a -le $k) {
    Write-Host $Yay
}
else {
    Write-Host $No
}
exit 0