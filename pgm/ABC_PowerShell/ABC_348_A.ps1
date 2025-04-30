$N = [int][Console]::ReadLine()
Set-Variable -Name failureTime -Value 3 -Option Constant
Set-Variable -Name fail -Value "x" -Option Constant
Set-Variable -Name success -Value "o" -Option Constant
@(1..$N) | ForEach-Object {
    if ($_ % $failureTime -eq 0) { Write-Host -NoNewline $fail }
    else { Write-Host -NoNewline $success } }
Write-Host
exit 0