$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "two" -Value ([uint32]2) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cubes = $zero
for ($i = $one; $i -le $N; $i++) {
    $cube = $i * $i * $i
    if ($i % $two -ne $zero) {
        $cubes -= $cube
    }
    else {
        $cubes += $cube
    }
}
Write-Host $cubes
exit 0