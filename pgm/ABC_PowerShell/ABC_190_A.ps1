$A, $B, $C = [int[]][Console]::ReadLine().Split()
Set-Variable -Name zero -Value ([uint32]0) -Option Constant
Set-Variable -Name Takahashi -Value "Takahashi" -Option Constant
Set-Variable -Name Aoki -Value "Aoki" -Option Constant
if ($C -eq $zero) {
    if ($A -le $B) {
        Write-Host $Aoki
    }
    else {
        Write-Host $Takahashi
    }
}
else {
    if ($B -le $A) {
        Write-Host $Takahashi
    }
    else {
        Write-Host $Aoki
    }
}
exit 0