$X = [uint32[]]([Console]::ReadLine() -split "\B")
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
Write-Host ($X[$zero] + $X[$one])
exit 0