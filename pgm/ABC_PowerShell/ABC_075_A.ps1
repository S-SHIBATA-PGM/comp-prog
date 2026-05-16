$ABC = [int32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host ($ABC | Group-Object | 
    Where-Object { $_.Count -eq $one } | 
    Select-Object -ExpandProperty Name)
exit 0