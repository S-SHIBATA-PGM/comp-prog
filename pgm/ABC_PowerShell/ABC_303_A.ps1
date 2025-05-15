$N = [int][Console]::ReadLine()
$S = [char[]][Console]::ReadLine().ToCharArray()
$T = [char[]][Console]::ReadLine().ToCharArray()
Set-Variable -Name one -Value "1" -Option Constant
Set-Variable -Name l -Value "l" -Option Constant
Set-Variable -Name zero -Value "0" -Option Constant
Set-Variable -Name o -Value "o" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$match = $true
@(0..($N - 1)) | ForEach-Object {
    if ($S[$_] -ne $T[$_] -and (
            [Math]::Min([int]$S[$_], [int]$T[$_]) -ne [int][char]$one -or 
            [Math]::Max([int]$S[$_], [int]$T[$_]) -ne [int][char]$l) -and (
            [Math]::Min([int]$S[$_], [int]$T[$_]) -ne [int][char]$zero -or 
            [Math]::Max([int]$S[$_], [int]$T[$_]) -ne [int][char]$o)) {
        $match = $false
        $match > $null
        return
    }
}
Write-Host ($match ? $Yes : $No)
exit 0