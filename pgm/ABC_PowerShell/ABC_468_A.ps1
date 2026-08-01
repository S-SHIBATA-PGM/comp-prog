$null = [Console]::ReadLine()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$len = $A.Length
$cnt = $zero
for ($i = $one; $i -lt $len - $one; $i += $one) {
    if ($A[$i - $one] -lt $A[$i] -and $A[$i] -gt $A[$i + $one]) {
        $cnt += $one
    }
}
Write-Host ($cnt)
exit 0