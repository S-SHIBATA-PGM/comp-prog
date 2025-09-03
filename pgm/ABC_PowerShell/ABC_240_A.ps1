$a, $b = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name mod -Value 10 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$prv = ($a - $one) % $mod
$nxt = ($a + $one) % $mod
if ($prv -eq $zero) {
    $prv += $mod;
}
if ($nxt -eq $zero) {
    $nxt += $mod;
}
if ($b -eq $prv -or $b -eq $nxt) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0