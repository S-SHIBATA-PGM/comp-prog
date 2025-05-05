[Console]:: ReadLine() > $null
$A = [int[]][Console]:: ReadLine().Split(" ")
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$same = $true
$pre = $A[0]
foreach ($num in $A) {
    if ($num -ne $pre) {
        $same = $same -and $false
    }
}
$same ? $Yes : $No
exit 0