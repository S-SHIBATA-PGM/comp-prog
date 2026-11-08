$N = [uint32][Console]::ReadLine()
$S = [Console]::ReadLine()
Set-Variable -Name "R" -Value ([string]"R") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
[uint32]$currentStreak = $zero
[uint32]$max = $zero
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    if ($S[$i] -ceq $R) {
        $currentStreak++
        if ($currentStreak -gt $max) {
            $max = $currentStreak
        }
    }
    else {
        $currentStreak = $zero
    }
}
Write-Host $max
exit 0