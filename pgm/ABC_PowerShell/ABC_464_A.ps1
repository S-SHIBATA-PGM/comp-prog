$S = [Console]::ReadLine()
Set-Variable -Name "East" -value ([string]"East") -Option Constant
Set-Variable -Name "West" -value ([string]"West") -Option Constant
Set-Variable -Name "cE" -value ([char]'E') -Option Constant
Set-Variable -Name "three" -value ([uint32]3) -Option Constant
$len = $S.Length
$cnt = ($S.ToCharArray() | Where-Object { $_ -eq $cE }).Count
if ($cnt -gt $len - $cnt) {
    Write-Host $East
}
else {
    Write-Host $West
}
exit 0