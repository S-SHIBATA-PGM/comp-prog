Set-Variable -Name "pattern" -value ([string]"\B") -Option Constant
Set-Variable -Name "blank" -value ([string]"") -Option Constant
$s = [uint32[]]([Console]::ReadLine() -split $pattern |
    Where-Object { $_ -ne $blank })
Write-Host (($s | Measure-Object -Sum).Sum)
exit 0