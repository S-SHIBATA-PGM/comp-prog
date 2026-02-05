using namespace System.Collections.Generic
$A, $B, $C = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -Value "Yes" -Option Constant
Set-Variable -Name "No" -Value "No" -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
$ABC = [int[]]@($A, $B, $C)
if (([HashSet[int]]::new($ABC)).Count -eq $two) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0