$S = [string][Console]::ReadLine()
Set-Variable -name UPC -value "UPC" -option constant
Write-Host ($S.Substring(0, 1) + $UPC)