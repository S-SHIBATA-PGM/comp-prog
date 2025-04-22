[int] $N, [int] $K = [Console]::ReadLine().Split(" ")
[int[]] $A = New-Object int[] $N
$A = [Console]::ReadLine().Split(" ")
[string] $sp = "";
for ([int] $i = $N - $K; $i -lt $N; $i++) {
    Write-Host -NoNewLine $sp
    Write-Host -NoNewLine $A[$i]
    $sp = " ";
}
for ([int] $i = 0; $i -lt $N - $K; $i++) {
    Write-Host -NoNewLine $sp
    Write-Host -NoNewLine $A[$i]
}
Write-Host