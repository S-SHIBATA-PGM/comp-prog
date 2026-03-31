$b = [Console]::ReadLine()
Set-Variable -Name "A" -value ([string]"A") -Option Constant
Set-Variable -Name "T" -value ([string]"T") -Option Constant
Set-Variable -Name "G" -value ([string]"G") -Option Constant
Set-Variable -Name "C" -value ([string]"C") -Option Constant
$basePair = @{
    $A = $T
    $T = $A
    $G = $C
    $C = $G
}
Write-Host $basePair[$b]
exit 0