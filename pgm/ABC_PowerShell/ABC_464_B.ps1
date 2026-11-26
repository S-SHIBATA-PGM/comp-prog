$H, $W = [uint32[]][Console]::ReadLine().Split()
$grid = New-Object string[] $H
Set-Variable -Name "cSharp" -Value ([char]'#') -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
[int32]$minY = [int32]$H
[int32]$maxY = - $one
[int32]$minX = [int32]$W
[int32]$maxX = - $one
for ([uint32]$y = $zero; $y -lt $H; $y++) {
    $C = [Console]::ReadLine()
    $grid[$y] = $C
    [int32]$firstX = $C.IndexOf($cSharp)
    if ($firstX -ge 0) {
        [int32]$lastX = $C.LastIndexOf($cSharp)
        if ([int32]$y -lt $minY) { $minY = [int32]$y }
        if ([int32]$y -gt $maxY) { $maxY = [int32]$y }
        if ($firstX -lt $minX) { $minX = $firstX }
        if ($lastX -gt $maxX) { $maxX = $lastX }
    }
}
[int32]$subWidth = ($maxX - $minX) + 1
for ([int32]$y = $minY; $y -le $maxY; $y++) {
    Write-Host ($grid[$y].Substring($minX, $subWidth))
}
exit 0