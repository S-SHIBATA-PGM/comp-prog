$N = [double][Console]::ReadLine()
Set-Variable -name high -value 1 -option constant
Set-Variable -name fever -value 2 -option constant
Set-Variable -name normal -value 3 -option constant
Set-Variable -name d_high -value 38.0 -option constant
Set-Variable -name d_normal -value 37.5 -option constant
if ($N -ge $d_high) {
    Write-Host -NoNewLine $high
} elseif ($N -ge $d_normal) {
    Write-Host -NoNewLine $fever
} else {
    Write-Host -NoNewLine $normal
}
Write-Host