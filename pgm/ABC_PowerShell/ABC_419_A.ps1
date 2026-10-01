$S = [Console]::ReadLine()
Set-Variable -Name "Unknown" -Value ([string]"Unknown") -Option Constant
Set-Variable -Name "red" -Value ([string]"red") -Option Constant
Set-Variable -Name "blue" -Value ([string]"blue") -Option Constant
Set-Variable -Name "green" -Value ([string]"green") -Option Constant
Set-Variable -Name "SSS" -Value ([string]"SSS") -Option Constant
Set-Variable -Name "FFF" -Value ([string]"FFF") -Option Constant
Set-Variable -Name "MMM" -Value ([string]"MMM") -Option Constant
$language = [System.Collections.Generic.Dictionary[string, string]]::new()
$language.Add($red, $SSS)
$language.Add($blue, $FFF)
$language.Add($green, $MMM)
$word = $null
if (-not $language.TryGetValue($S, [ref]$word)) {
    $word = $Unknown
}
Write-Host $word
exit 0