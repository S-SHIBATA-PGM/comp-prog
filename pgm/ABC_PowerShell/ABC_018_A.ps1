$source = @"
using System;
using System.Collections;
public class Mame1 : IComparer {
    public int Compare(object x, object y) {
        dynamic m1 = x;
        dynamic m2 = y;
        int ret = ((uint)m2.point).CompareTo((uint)m1.point);
        if (ret == 0) {
            ret = ((string)m2.abc).CompareTo((string)m1.abc);
        }
        return ret;
    }
}
public class Mame2 : IComparer {
    public int Compare(object x, object y) {
        dynamic m1 = x;
        dynamic m2 = y;
        return ((string)m1.abc).CompareTo((string)m2.abc);
    }
}
"@
Add-Type -TypeDefinition $source -ErrorAction SilentlyContinue
$A = [uint32][Console]::ReadLine()
$B = [uint32][Console]::ReadLine()
$C = [uint32][Console]::ReadLine()
Set-Variable -Name "strA" -value ([string]"A") -Option Constant
Set-Variable -Name "strB" -value ([string]"B") -Option Constant
Set-Variable -Name "strC" -value ([string]"C") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$list = [System.Collections.ArrayList]@(
    [PSCustomObject]@{
        abc = [string]$strA; point = [uint32]$A; rank = [uint32]$zero 
    },
    [PSCustomObject]@{
        abc = [string]$strB; point = [uint32]$B; rank = [uint32]$zero 
    },
    [PSCustomObject]@{
        abc = [string]$strC; point = [uint32]$C; rank = [uint32]$zero 
    }
)
$list.Sort([Mame1]::new())
$cnt = [uint32]$list.Count
for ($i = $zero; $i -lt $cnt; $i++) {
    $list[$i].rank = [int]($i + $one)
}
$list.Sort([Mame2]::new())
foreach ($m in $list) {
    Write-Host $m.rank
}
exit 0