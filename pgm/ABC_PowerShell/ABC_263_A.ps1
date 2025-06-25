$A, $B, $C, $D, $E = [int[]][Console]::ReadLine().Split()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name thirteen -Value 13 -Option Constant
$cards = New-Object int[] $thirteen
$cards[$A - 1]++
$cards[$B - 1]++
$cards[$C - 1]++
$cards[$D - 1]++
$cards[$E - 1]++
$threeCards = 0
$pairs = 0
foreach ($num in $cards) {
    if ($num -eq $three) {
        $threeCards++
    }
    elseif ($num -eq $two) {
        $pairs++
    }
}
Write-Host ($threeCards -eq $one -and $pairs -eq $one ? $Yes : $No)
exit 0