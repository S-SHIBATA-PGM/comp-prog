Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
Write-Host ( -join (
        [string[]][Console]::ReadLine().Split() | 
        ForEach-Object { $_.Substring($zero, $one).ToUpper() }
    )
)