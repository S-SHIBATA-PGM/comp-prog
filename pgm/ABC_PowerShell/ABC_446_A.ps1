$S = [Console]::ReadLine()
Set-Variable -Name "Of" -Value ([string]"Of") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
Write-Host (
    [string]::Concat($Of, [char]::ToLower($S[$zero]), $S.Substring($one)))
exit 0