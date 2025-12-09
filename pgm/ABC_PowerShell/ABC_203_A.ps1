$abc = [int[]][Console]::ReadLine().Split()
Set-Variable -Name no -Value 0 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$breakFlg = [bool]$false
for ($i = 0; $i -lt $abc.Count; $i++) {
    if ($breakFlg) {
        break
    }
    if ($abc[($i + $one) % $three] -eq $abc[($i + $two) % $three]) {
        $breakFlg = $true
        Write-Host $abc[$i]
    }
}
if (!$breakFlg) {
    Write-Host $no
}
exit 0