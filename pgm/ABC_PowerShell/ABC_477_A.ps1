$c = [Console]::ReadLine()
Set-Variable -Name "B" -Value ([string]"B") -Option Constant
Set-Variable -Name "Y" -Value ([string]"Y") -Option Constant
Set-Variable -Name "R" -Value ([string]"R") -Option Constant
$nextColor = @{
    $B = $Y
    $Y = $R
    $R = $B
}
Write-Host ($nextColor[$c])
exit 0