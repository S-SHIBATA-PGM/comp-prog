$A, $B, $C, $D, $E, $F, $X = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Takahashi -Value "Takahashi" -Option Constant
Set-Variable -Name Aoki -Value "Aoki" -Option Constant
Set-Variable -Name Draw -Value "Draw" -Option Constant
$takahashi_distance = 
$B * $A * [Math]::Truncate(
    $X / ($A + $C)) + $B * [Math]::Min($A, $X % ($A + $C))
$aoki_distance = 
$E * $D * [Math]::Truncate(
    $X / ($D + $F)) + $E * [Math]::Min($D, $X % ($D + $F))
if ($takahashi_distance -gt $aoki_distance) {
    Write-Host $Takahashi
}
elseif ($takahashi_distance -lt $aoki_distance) {
    Write-Host $Aoki
}
else {
    Write-Host $Draw
}
exit 0