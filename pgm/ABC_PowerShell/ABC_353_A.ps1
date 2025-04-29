[Console]::ReadLine() > $null
[int[]] $H = [Console]::ReadLine().Split(" ")
Set-Variable -Name no -Value -1 -Option Constant
[int] $idx = $no
foreach ($hight in $H) {
    if ($hight -gt $H[0]) {
        $idx = $H.IndexOf($hight);
        break
    }
}
$condition = $idx -eq $no
&({ Write-Host $no }, { Write-Host ($idx + 1) })[ !$condition ]
exit 0