$A, $B, $C, $D = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Takahashi -Value "Takahashi" -Option Constant
Write-Host (($A + $B) * ($C - $D))
Write-Host $Takahashi
exit 0