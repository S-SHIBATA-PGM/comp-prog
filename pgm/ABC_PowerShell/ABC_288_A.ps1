[Console]::ReadLine() > $null
while ($inputLine = [Console]::ReadLine()) {
    $A, $B = [int[]]$inputLine.Split()
    Write-Host ($A + $B)
}
exit 0