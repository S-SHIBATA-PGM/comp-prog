$S, $W = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "unsafe" -Value "unsafe" -Option Constant
Set-Variable -Name "safe" -Value "safe" -Option Constant
if ($S -le $W) {
    Write-Host $unsafe
}
else {
    Write-Host $safe
}
exit 0