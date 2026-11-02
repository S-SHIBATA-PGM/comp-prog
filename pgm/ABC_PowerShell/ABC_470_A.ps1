$N = [uint32][Console]::ReadLine()
Set-Variable -Name "Fizz" -Value ([string]"Fizz") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "three" -Value ([uint32]3) -Option Constant
for ([int32]$i = $one; $i -le $N; $i++) {
    if ($i % $three) {
        Write-Host $i
    }
    else {
        Write-Host $Fizz
    }
}
exit 0