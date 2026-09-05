$X, $Y, $Z = [int32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "one" -Value ([int32]1) -Option Constant
Set-Variable -Name "zero" -Value ([int32]0) -Option Constant
# 計算過程
# X + k = Z * (Y + k)
# X + k = Z * Y + Z * k
# k - Z * k = Z * Y - X
# k(1 - Z) = Z * Y - X
# k(Z - 1) = X - Z * Y
# k = (X - Z * Y) / (Z - 1)
if (($X - $Y * $Z) -ge $zero -and ($X - $Y * $Z) % ($Z - $one) -eq $zero) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0