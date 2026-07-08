$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$num_list = New-Object System.Collections.ArrayList
$i = $zero
while ($N -gt $zero) {
    if (($N % 2) -eq $($one)) {
        [void]$num_list.Add([uint][Math]::Pow($two, $i))
    }
    $N = [uint32][Math]::Truncate($N / 2)
    $i++
}
$num_list.Sort()
$cnt = [uint32]$num_list.Count
Write-Host $cnt
if ($cnt -gt $zero) {
    foreach ($num in $num_list) {
        Write-Host $num
    }
}
exit 0