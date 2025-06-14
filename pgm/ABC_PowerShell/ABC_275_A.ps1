[int][Console]::ReadLine() > $null
$H = [int[]][Console]::ReadLine().Split()
$max = [int]($H | Measure-Object -Maximum).Maximum
$idx = $H.IndexOf($max)
Write-Host ($idx + 1)
exit 0