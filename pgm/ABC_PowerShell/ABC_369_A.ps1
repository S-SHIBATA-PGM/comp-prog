[int] $A, $B = [Console]::ReadLine().Split(" ")
if ($A -eq $B) {
Write-Host -NoNewline 1
}
elseif ([Math]::Abs($A - $B) % 2 -eq 1) {
Write-Host -NoNewLine 2
}
else {
Write-Host -NoNewLine 3
}
Write-Host