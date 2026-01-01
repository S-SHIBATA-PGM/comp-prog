$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name solid15 -Value 15 -Option Constant
Set-Variable -Name solid10 -Value 10 -Option Constant
Set-Variable -Name solid3 -Value 3 -Option Constant
Set-Variable -Name fat8 -Value 8 -Option Constant
Set-Variable -Name fat3 -Value 3 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name four -Value 4 -Option Constant
$AB = $A + $B
if ($solid15 -le $AB -and $fat8 -le $B) {
    Write-Host $one
}
elseif ($solid10 -le $AB -and $fat3 -le $B) {
    Write-Host $two
}
elseif ($solid3 -le $AB) {
    Write-Host $three
}
else {
    Write-Host $four
}
exit 0