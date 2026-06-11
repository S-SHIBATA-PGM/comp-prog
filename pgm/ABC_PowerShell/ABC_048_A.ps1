$s = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
Write-Host "$($s[$zero][$zero])$($s[$one][$zero])$($s[$two][$zero])"
exit 0