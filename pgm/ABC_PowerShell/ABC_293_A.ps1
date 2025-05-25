$S = [Console]::ReadLine()
$i = 0
While ($i -lt $S.Length) {
    Write-Host -NoNewline $S[$i + 1]
    Write-Host -NoNewline $S[$i]
    $i += 2
}
Write-Host
exit 0