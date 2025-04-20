[string[]] $S = [Console]::ReadLine().Split(" ")
Set-Variable -Name gt -Value ">" -Option Constant
Set-Variable -Name A -Value "A" -Option Constant
Set-Variable -Name B -Value "B" -Option Constant
Set-Variable -Name C -Value "C" -Option Constant
function rank_ABC {
    Param (
        [string] $s,
        [string] $a,
        [string] $b,
        [System.Collections.ArrayList] $ABC
    )
    if ($gt -eq $s) {
        if ($ABC.IndexOf($a) -lt $ABC.IndexOf($b)) {
            $ABC.RemoveAt($ABC.IndexOf($b))
            $ABC.Insert($ABC.IndexOf($a), $b)
        }
    } else {
        if ($ABC.IndexOf($a) -gt $ABC.IndexOf($b)) {
            $ABC.RemoveAt($ABC.IndexOf($a))
            $ABC.Insert($ABC.IndexOf($b), $a)
        }
    }
    return($ABC)
}
$ABC = New-Object System.Collections.ArrayList
$ABC.Add($A) > $null
$ABC.Add($B) > $null
$ABC.Add($C) > $null
$ABC = rank_ABC -s $S[0] -a $A -b $B -ABC $ABC
$ABC = rank_ABC -s $S[1] -a $A -b $C -ABC $ABC
$ABC = rank_ABC -s $S[2] -a $B -b $C -ABC $ABC
Write-Host $ABC[1]