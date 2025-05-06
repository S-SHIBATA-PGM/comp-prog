$N = [System.Collections.Generic.List[int]]::new()
[Console]::ReadLine().ToCharArray() | ForEach-Object {
    $N.add(-join $_) > $null
}
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
[int] $pre = 10
[bool] $decrease_flg = $true
foreach ($num in $N) {
    if ($num -ge $pre) {
        $decrease_flg = $false;
        break;
    }
    $pre = $num;
}
Write-Host ($decrease_flg ? $Yes : $No)
exit 0