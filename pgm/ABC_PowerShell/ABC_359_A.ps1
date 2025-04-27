[int] $N = [Console]::ReadLine()
[string[]] $S = New-Object string[] $N
[string] $line = ""
for ([int] $i = 0; $null -ne ($line = [Console]::ReadLine()); $i++) {
    $S[$i] = $line
}
Set-Variable -Name Takahashi -Value "Takahashi" -Option Constant
Write-Host ($S | Where-Object { $_ -eq $Takahashi }).Count
exit 0