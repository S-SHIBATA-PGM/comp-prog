$S = [Console]::ReadLine().ToCharArray()
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name eight -Value 8 -Option Constant
Set-Variable -Name nine -Value 9 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$S = $S | Sort-Object
foreach ($i in @($zero..($S.Length - $one))) {
    if ($S[$i] -ne [char]$i.ToString()) {
        Write-Host $i
        break
    }
    elseif ($i -eq $eight) {
        Write-Host $nine
    }
}
exit 0