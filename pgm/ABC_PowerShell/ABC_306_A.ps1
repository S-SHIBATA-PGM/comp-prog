[Console]::ReadLine() > $null
Set-Variable -Name two -Value 2 -Option Constant
[string][Console]::ReadLine() -split "\B" | ForEach-Object {
    Write-Host -NoNewLine ($_ * $two)
}
Write-Host
exit 0