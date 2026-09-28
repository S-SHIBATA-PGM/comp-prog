$S = [Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "eight" -Value ([uint32]8) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
Set-Variable -Name "cZero" -Value ([char]'0') -Option Constant
$world = [uint32]$S[$zero] - [uint32]$cZero
$stage = [uint32]$S[$two] - [uint32]$cZero
if ($stage -eq $eight) {
    $world += $one
    $stage = $one
}
else {
    $stage += $one
}
Write-Host "${world}$($S[$one])${stage}"
exit 0