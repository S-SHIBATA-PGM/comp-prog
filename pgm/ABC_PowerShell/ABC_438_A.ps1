$D, $F = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "seven" -Value ([uint32]7) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
Write-Host (
    (
        $F + $seven * (
            [uint32][Math]::Floor(($D - $F) / $seven) + $one
        ) - $one
    ) % $D + $one
)
exit 0