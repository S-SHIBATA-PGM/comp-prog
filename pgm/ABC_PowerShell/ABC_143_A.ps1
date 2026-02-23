$A, $B = [int[]][Console]::ReadLine().Split()
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([int32]0) -Option Constant
Write-Host ([Math]::Max($zero, $A - $two * $B))
exit 0