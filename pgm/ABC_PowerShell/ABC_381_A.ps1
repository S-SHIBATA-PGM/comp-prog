[int] $N = [Console]::ReadLine()
[string[]] $S = [Console]::ReadLine().split("/")
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name one -Value '1' -Option Constant
Set-Variable -Name two -Value '2' -Option Constant
if ($S.Length -ne 2) {
    Write-Host -NoNewLine $No
} elseif ($S[0].Length -eq $S[1].Length) {
    if(($S[0].ToCharArray() |% {$ret = $true} {$ret = $ret -and $_ -eq $one} {$ret}) -and ($S[1].ToCharArray() |% {$ret = $true} {$ret = $ret -and $_ -eq $two} {$ret})) {
        Write-Host -NoNewLine $Yes
    } else {
        Write-Host -NoNewLine $No
    }
} else {
    Write-Host -NoNewLine $No
}
Write-Host