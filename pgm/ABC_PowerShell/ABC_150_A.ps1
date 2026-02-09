$K, $X = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "fiveHundred" -Value ([uint32]500) -Option Constant
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
if (500 * $K -ge $X) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0