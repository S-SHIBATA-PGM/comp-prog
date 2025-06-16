Function f([int]$k) {
    if ($k -eq 0) {
        return 1
    }
    else {
        return $k * (f ($k - 1))
    }
}
$N = [int][Console]::ReadLine()
Write-Host (f $N)
exit 0