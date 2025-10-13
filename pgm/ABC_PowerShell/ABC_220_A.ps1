$A, $B, $C = [int[]][Console]::ReadLine().Split()
Set-Variable -Name no -Value -1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$multiple = $A + $C - $A % $C
if ($A % $C -eq $zero) {
    Write-Host $A
}
elseif ($multiple -le $B) {
    Write-Host $multiple
}
else {
    Write-Host $no
}
exit 0