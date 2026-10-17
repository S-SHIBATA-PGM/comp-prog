$S = [Console]::ReadLine()
Set-Variable -Name "cA" -Value ([char]'a') -Option Constant
Set-Variable -Name "cZ" -Value ([char]'z') -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$missing = [char]$zero
for ([uint32]$c = [char]$cA; $c -le [int]$cZ; $c++) {
    $curr = [char]$c
    if (-not $S.Contains($curr)) {
        $missing = $curr
        break
    }
}
Write-Host $missing
exit 0