$N, $P, $Q, $R, $S = [int[]][Console]::ReadLine().Split()
$A = [int[]][Console]::ReadLine().Split()
$i = $R - 1
@(($P - 1)..($Q - 1)) | ForEach-Object {
    $A[$_], $A[$i] = $A[$i], $A[$_]
    $i++
}
Write-Host $A
exit 0