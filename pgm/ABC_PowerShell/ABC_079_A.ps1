$N = [Console]::ReadLine()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
Set-Variable -Name "d" -value ([string]"d") -Option Constant
Set-Variable -Name "comma" -value ([string]",") -Option Constant
Set-Variable -Name "lBrace" -value ([string]"{") -Option Constant
Set-Variable -Name "rBrace" -value ([string]"}") -Option Constant
Set-Variable -Name "lParen" -value ([string]"(") -Option Constant
Set-Variable -Name "rParen" -value ([string]")") -Option Constant
Set-Variable -Name "backslash" -value ([string]"\") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "two" -value ([uint32]2) -Option Constant
$pattern = "$lParen$backslash$d$rParen$backslash$one$lBrace$two$comma$rBrace"
if ($N -match $pattern) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0