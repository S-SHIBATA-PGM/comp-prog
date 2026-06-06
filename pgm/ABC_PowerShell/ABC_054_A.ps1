$A, $B = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Alice" -value ([string]"Alice") -Option Constant
Set-Variable -Name "Bob" -value ([string]"Bob") -Option Constant
Set-Variable -Name "Draw" -value ([string]"Draw") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "fourteen" -value ([uint32]14) -Option Constant
$A = if ($A -eq $one) { $fourteen } else { $A }
$B = if ($B -eq $one) { $fourteen } else { $B }
if ($A -gt $B) {
    Write-Host $Alice
}
elseif ($A -lt $B) {
    Write-Host $Bob
}
else {
    Write-Host $Draw
}
exit 0