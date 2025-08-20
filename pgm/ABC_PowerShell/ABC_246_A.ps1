Set-Variable -Name space -Value " " -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$x = New-Object 'int[]' $three
$y = New-Object 'int[]' $three
@($zero..($three - $one)) | ForEach-Object {
    $x[$_], $y[$_] = [Console]::ReadLine().Split()
}
$pointX = $x[$zero]
$pointY = $y[$zero]
if ($x[$two] -eq $x[$zero]) {
    $pointX = $x[$one]
}
elseif ($x[$zero] -eq $x[$one]) {
    $pointX = $x[$two]
}
if ($y[$two] -eq $y[$zero]) {
    $pointY = $y[$one]
}
elseif ($y[$zero] -eq $y[$one]) {
    $pointY = $y[$two]
}
Write-Host -NoNewline $pointX
Write-Host -NoNewline $space
Write-Host $pointY
exit 0