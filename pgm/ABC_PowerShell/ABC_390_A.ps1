$A = [int[]](([string][Console]::ReadLine()).Split(" "))
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
$times = 0;
$ret = $Yes
for ($i = 0; $i -lt $A.Length; $i++) {
    if ($i -eq $A.Length - 1 -and $A[$i] -ne $i + 1) {
        $ret = $No
        break
    }
    else {
        if ($A[$i] -ne $i + 1) {
            if ($times -eq 0 -and $A[$i + 1] -eq $i + 1) {
                $num = $A[$i]
                $A[$i] = $A[$i + 1]
                $A[$i + 1] = $num
                $times = $times + 1
            }
            else {
                $ret = $No
                $break
            }
        }
    }
}
$condition = $times -ne 1
&({ Write-Host $No }, { Write-Host $ret })[ !$condition ]