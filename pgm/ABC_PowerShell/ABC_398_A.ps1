$N = [bigint][Console]::ReadLine()
Set-Variable -name hyphen -value "-" -option constant
Set-Variable -name equal -value "=" -option constant
$num_hyphen = ($N - (2 - $N % 2)) / 2
$num_equal = 2 - $N % 2
Write-Host -NoNewLine ("$hyphen" * $num_hyphen)
Write-Host -NoNewLine ("$equal" * $num_equal)
Write-Host -NoNewLine ("$hyphen" * $num_hyphen)
Write-Host