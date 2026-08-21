$null, $X = [uint32[]][Console]::ReadLine().Split()
$A = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$len = $A.Length
for ($i = $zero; $i -lt $len; $i += $one) {
    if ($A[$i] -lt $X) {
        $X = $A[$i]
        Write-Host $one
    }
    else {
        Write-Host $zero
    }
}
exit 0