$bigH, $bigW = [int[]][Console]::ReadLine().Split()
$smallH, $smallW = [int[]][Console]::ReadLine().Split()
Write-Host ($bigH * $bigW - $smallH * $bigW - $bigH * $smallW +
    $smallH * $smallW)
exit 0