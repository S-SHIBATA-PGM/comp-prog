$ABC = [int32[]][Console]::ReadLine().Split()
[Array]::Sort($ABC)
[Array]::Reverse($ABC)
Write-Host ([string]::Concat($ABC))
exit 0