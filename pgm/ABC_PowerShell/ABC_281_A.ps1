$N = [int][Console]::ReadLine()
@($N..0) | ForEach-Object {
    Write-Host $_
}
exit 0