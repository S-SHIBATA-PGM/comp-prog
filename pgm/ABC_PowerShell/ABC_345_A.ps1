Set-Variable -Name lt -Value "<" -Option Constant
Set-Variable -Name eq -Value "=" -Option Constant
Set-Variable -Name gt -Value ">" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
[Console]::ReadLine() | ForEach-Object {
    if ($_.Substring(0, 1) -eq $lt -and
        $_.Substring(1, $_.Length - 2) -eq $eq * ($_.Length - 2) -and
        $_.Substring($_.Length - 1, 1) -eq $gt ) {
        Write-Host Yes
    }
    else {
        Write-Host No
    }
}
exit 0