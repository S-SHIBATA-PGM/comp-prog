[void][Console]::ReadLine()
$S = [Console]::ReadLine()
$T = [Console]::ReadLine()
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$len = [uint32]$S.Length
$cnt = [uint32]$zero
for ([uint32]$i = $zero; $i -lt $len; $i++) {
    if ($S[$i] -cne $T[$i]) {
        $cnt++
    }
}
Write-Host $cnt
exit 0