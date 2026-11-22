$N = [uint32][Console]::ReadLine()
$S = [Console]::ReadLine()
Set-Variable -Name "cX" -Value ([char]'x') -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
[uint32]$cnt = $zero
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    if ($S[$i] -ceq $cX) {
        [bool]$isLeftOk = ($i -eq $zero) -or ($S[$i - $one] -ceq $cX)
        [bool]$isRightOk = ($i -eq ($N - $one)) -or ($S[$i + $one] -ceq $cX)
        if ($isLeftOk -and $isRightOk) {
            $cnt += $one
        }
    }
}
Write-Host $cnt
exit 0