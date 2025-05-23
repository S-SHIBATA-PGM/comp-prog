[Console]::ReadLine() > $null
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name space -Value " " -Option Constant
$s = ""
[int[]][Console]::ReadLine().Split(" ") | Where-Object {
    if ($_ % $two -eq 0) {
        Write-Host -NoNewline $s
        Write-Host -NoNewline $_
        $s = $space
    }
}
Write-Host
exit 0