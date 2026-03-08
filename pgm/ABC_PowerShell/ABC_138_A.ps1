$a = [int][Console]::ReadLine()
$s = [Console]::ReadLine()
Set-Variable -Name "red" -value ([string]"red") -Option Constant
Set-Variable -Name "threeThousandTwoHundred" -Value ([uint32]3200) `
    -Option Constant
if ($a -ge $threeThousandTwoHundred) {
    Write-Host $s
}
else {
    Write-Host $red
}
exit 0