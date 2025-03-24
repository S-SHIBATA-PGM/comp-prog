$N = [int][Console]::ReadLine()
$A = [int[]]([Console]::ReadLine()).Split(" ")
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
$pre = 0;
for ($i = 0; $i -lt $N; $i++) {
    if ($A[$i] -le $pre) {
        Write-Host ($No)
        exit
    }
    $pre = $A[$i];
}
Write-Host($Yes)
exit