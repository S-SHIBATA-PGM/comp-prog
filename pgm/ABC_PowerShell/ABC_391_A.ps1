$D = [string][Console]::ReadLine()
$NEWS = @{"N" = "S"; "E" = "W"; "W" = "E"; "S" = "N" }
Write-Host -NoNewLine $NEWS[$D.substring(0, 1)]
if ($D.Length -eq 2) {
    Write-Host -NoNewLine $NEWS[$D.substring(1, 1)]
}
Write-Host