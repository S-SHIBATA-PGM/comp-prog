$c = [Console]::ReadLine()
Set-Variable -Name "vowel" -value ([string]"vowel") -Option Constant
Set-Variable -Name "consonant" -value ([string]"consonant") -Option Constant
Set-Variable -Name "a" -value ([string]"a") -Option Constant
Set-Variable -Name "e" -value ([string]"e") -Option Constant
Set-Variable -Name "i" -value ([string]"i") -Option Constant
Set-Variable -Name "o" -value ([string]"o") -Option Constant
Set-Variable -Name "u" -value ([string]"u") -Option Constant
Set-Variable -Name "aeiou" -value (
    [string[]]@($a, $e, $i, $o, $u)) -Option Constant
if ($c -cin $aeiou) {
    Write-Host $vowel
}
else {
    Write-Host $consonant
}
exit 0