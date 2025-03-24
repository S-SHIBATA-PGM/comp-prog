$S = ([string][Console]::ReadLine()).Split(" ")
$S1 = $S[0]
$S2 = $S[1]
Set-Variable -name sick -value "sick" -option constant
Set-Variable -name fine -value "fine" -option constant
if ($S1 -eq $sick -and $S2 -eq $sick) {
    Write-Host 1
}
elseif ($S1 -eq $sick -and $S2 -eq $fine) {
    Write-Host 2
}
elseif ($S1 -eq $fine -and $S2 -eq $sick) {
    Write-Host 3
}
else {
    Write-Host 4
}