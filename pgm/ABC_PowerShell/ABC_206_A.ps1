$N = [decimal][Console]::ReadLine()
Set-Variable -Name high -Value ":(" -Option Constant
Set-Variable -Name price -Value 206 -Option Constant
Set-Variable -Name soso -Value "so-so" -Option Constant
Set-Variable -Name tax -Value 1.08 -Option Constant
Set-Variable -Name yay -Value "Yay!" -Option Constant
$amount = [Math]::Floor($N * $tax)
if ($amount -gt $price) {
    Write-Host $high
}
elseif ($amount -lt $price) {
    Write-Host $yay
}
else {
    Write-Host $soso
}
exit 0