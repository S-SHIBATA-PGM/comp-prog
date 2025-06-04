$N = [int][Console]::ReadLine()
$S = New-Object string[] $N
[int]$i = 0
while ($inputLine = [string][Console]::ReadLine()) {
    $S[$i] = $inputLine
    $i++
}
[Array]::Reverse($S)
@(0..($N - 1)) | ForEach-Object {
    Write-Host $S[$_]
}
exit 0