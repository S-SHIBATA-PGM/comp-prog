$N, $D = [int[]][Console]::ReadLine().Split(" ")
$T = [int[]][Console]::ReadLine().Split(" ")
Set-Variable -Name no -Value -1 -Option Constant
$pre = - $D
$breakFlg = $false
foreach ($time in $T) {
    if ($time - $pre -le $D) {
        Write-Host $time
        $breakFlg = $true
        break
    }
    $pre = $time
}
if (-not $breakFlg) {
    Write-Host $no
}
exit 0