$N, $S, $K = [int[]][Console]::ReadLine().Split(" ")
$P = New-Object int[] $N
$Q = New-Object int[] $N
@(0..($N - 1)) | ForEach-Object {
    $P[$_], $Q[$_] = [int[]][Console]::ReadLine().Split(" ") 
}
$price = 0
@(0..($N - 1)) | ForEach-Object {
    $price += $P[$_] * $Q[$_]
}
Write-Host ($price -lt $S ? $price + $K : $price)
exit 0