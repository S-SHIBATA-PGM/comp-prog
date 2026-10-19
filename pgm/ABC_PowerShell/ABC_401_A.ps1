$S = [uint32][Console]::ReadLine()
Set-Variable -Name "Success" -Value ([string]"Success") -Option Constant
Set-Variable -Name "Failure" -Value ([string]"Failure") -Option Constant
Set-Variable -Name "twoHundred" -Value ([uint32]200) -Option Constant
Set-Variable -Name "twoHundredNinetyNine" -Value ([uint32]299) -Option Constant
if ($twoHundred -le $S -and $S -le $twoHundredNinetyNine) {
    Write-Host $Success
}
else {
    Write-Host $Failure
}
exit 0