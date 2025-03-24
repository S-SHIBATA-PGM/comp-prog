$N = [int][Console]::ReadLine()
$A = ([string][Console]::ReadLine()).Split(" ")
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
Set-Variable -name times -value 3 -option constant
$pre = "-1"
$cnt = 0
for ($i = 0; $i -lt $N; $i++) {
    if ($pre -eq $A[$i]) {
        $cnt++
        if ($times -eq $cnt) {
            Write-Host $Yes
            exit
        }
    }
    else {
        $cnt = 1
        $pre = $A[$i]
    }
}
Write-Host $No
exit