Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
[string][Console]::ReadLine() | ForEach-Object {
    $flg = [char]::IsUpper($_[0])
    if ($flg -and $_.Length -gt 1) {
        $_[1..($_.length - 1)] | ForEach-Object {
            $flg = $flg -and [char]::isLower($_)
        }
    }
}
if ($flg) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 