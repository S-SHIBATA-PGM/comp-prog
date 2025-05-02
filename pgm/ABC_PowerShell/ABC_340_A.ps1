$A, $B, $D = [int[]][console]::ReadLine().Split(" ")
Set-Variable -Name blank -Value '' -Option Constant
Set-Variable -Name space -Value ' ' -Option Constant
$s = $blank
for ([int]$i = $A; $i -lt $B + 1; $i += $D) {
    Write-Host -NoNewline "$s$i"
    $s = $space
}
Write-Host
exit 0