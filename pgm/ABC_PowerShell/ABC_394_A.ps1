$S = [string][Console]::ReadLine()
Write-Host ([regex]::Replace($S, "[^2]+", ""))