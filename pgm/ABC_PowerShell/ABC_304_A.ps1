$N = [int][Console]::ReadLine()
$S = New-Object "string[]" $N
$A = New-Object "int[]" $N
@(0..($N - 1)) | ForEach-Object {
    [string]$S[$_], [int]$A[$_] = [string[]][Console]::ReadLine().Split(" ")
}
$min = [int]($A | Measure-Object -Minimum).Minimum
$idx = $A.IndexOf($min)
@(0..($N - 1)) | ForEach-Object {
    Write-Host $S[($_ + $idx) % $N]
}
exit 0