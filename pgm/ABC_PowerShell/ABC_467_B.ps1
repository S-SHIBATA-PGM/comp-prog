$N = [uint32][Console]::ReadLine()
Set-Variable -Name "keep" -Value ([string]"keep") -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
[uint32]$sum = 0
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    [uint32]$A, [uint32]$B, [string]$S = [Console]::ReadLine().Split()
    if ($S -ceq $keep) {
        $sum += $B - $A
    }
}
Write-Host $sum
exit 0