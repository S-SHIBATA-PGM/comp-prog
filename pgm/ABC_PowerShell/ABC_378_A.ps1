[string] $A1, $A2, $A3, $A4 = [Console]::ReadLine().Split(" ")
Set-Variable -Name zero -Value 0 -Option Constant
Set-Variable -Name one -Value "1" -Option Constant
Set-Variable -Name two -Value "2" -Option Constant
Set-Variable -Name three -Value "3" -Option Constant
Set-Variable -Name four -Value "4" -Option Constant
$A = @{ $one = $zero; $two = $zero; $three = $zero; $four = $zero; }
$A[$A1]++
$A[$A2]++
$A[$A3]++
$A[$A4]++
[int] $cnt = $zero
for ([int] $i = $zero; $i -lt $A.Count; $i++) {
    $cnt += [Math]::Truncate($A.[string]($i + 1) / 2)
}
Write-Host $cnt