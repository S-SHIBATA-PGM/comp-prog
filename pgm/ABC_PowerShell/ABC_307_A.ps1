$N = [int][Console]::ReadLine()
$A = [int[]][Console]::ReadLine().Split(" ")
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name seven -Value 7 -Option Constant
Set-Variable -Name blank -Value "" -Option Constant
Set-Variable -Name space -Value " " -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$s = $blank
$sum = 0
$j = 0
$next = 0
(0..($N - 1)) | ForEach-Object {
    $next = $j + $seven
    ($j..($next - 1)) | ForEach-Object {
        $sum += $A[$_]
        $j++
    }
    Write-Host -NoNewLine $s
    Write-Host -NoNewLine $sum
    $s = $space
    $sum = $zero
}
Write-Host
exit 0