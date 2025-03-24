$N = [int][Console]::ReadLine()
$A = [int[]]([Console]::ReadLine()).Split(" ")
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
for ($i = 1; $i -lt $N; $i++) {
    if ($A[$i] -le $A[$i - 1]) {
        Write-Host ($No)
        exit
    }
}
Write-Host($Yes)
exit