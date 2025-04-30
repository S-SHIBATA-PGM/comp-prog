[Console]::ReadLine() > $null
$pre = $null
Set-Variable -Name blank -Value '' -Option Constant
Set-Variable -Name space -Value ' ' -Option Constant
$s = $blank
[int[]][Console]::ReadLine().Split(" ") | ForEach-Object {
    if ($pre -ne $null) {
        Write-Host -NoNewline $s
        Write-Host -NoNewline ($pre * $_)
        $s = $space
    }
    $pre = $_
}
Write-Host
exit 0