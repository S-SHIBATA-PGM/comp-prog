$S = [string[]][Console]::ReadLine() -split "\B"
Set-Variable -Name "circle" -value ([string]"o") -Option Constant
Set-Variable -Name "hundred" -value ([uint32]100) -Option Constant
Set-Variable -Name "sevenHundred" -value ([uint32]700) -Option Constant
Write-Host (
    $sevenHundred + $hundred * (
        $S | Where-Object { $_ -eq $circle }
    ).Count
)
exit 0