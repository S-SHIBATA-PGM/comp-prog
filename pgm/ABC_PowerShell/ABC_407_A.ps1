$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "zero" -Value ([int32]0) -Option Constant
Write-Host ([Math]::Round($A / $B, $zero, [MidpointRounding]::AwayFromZero))
exit 0