$N = [bigint][Console]::ReadLine()
Set-Variable -name hyphen -value "-" -option constant
Set-Variable -name equal -value "=" -option constant
$num_hyphen = ($N - (2 - $N % 2)) / 2
$num_equal = 2 - $N % 2
for ($i = 1; $i -le $num_hyphen; $i++) {
    Write-Host -NoNewLine $hyphen
}
for ($i = 1; $i -le $num_equal; $i++) {
    Write-Host -NoNewLine $equal
}
for ($i = 1; $i -le $num_hyphen; $i++) {
    Write-Host -NoNewLine $hyphen
}
Write-Host