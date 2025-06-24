$L, $R = [int[]][Console]::ReadLine().Split()
Set-Variable -Name atcoder -Value "atcoder" -Option Constant
Write-Host $atcoder.Substring($L - 1, $R - $L + 1)
exit 0