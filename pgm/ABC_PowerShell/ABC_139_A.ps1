$S = [char[]][Console]::ReadLine()
$T = [char[]][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
Write-Host (
    (
        $zero..($S.Count - $one) |
        Where-Object { $S[$_] -ceq $T[$_] }
    ).Count
)