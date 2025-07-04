$S = [Console]::ReadLine()
Set-Variable -Name no -Value -1 -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
$uniqueFlg = $false
(0..($S.Length - 1)) | ForEach-Object {
    if ($uniqueFlg) {
        return
    }
    if ($S[$_] -cne $S[($_ + $one) % $three] -and 
        $S[$_] -cne $S[($_ + $two) % $three]) {
        $uniqueFlg = $true
        Write-Host $S[$_]
    }
}
if (-not $uniqueFlg) {
    Write-Host $no
}
exit 0