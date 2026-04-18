$R = [uint32][Console]::ReadLine()
Set-Variable -Name "ABC" -value ([string]"ABC")
Set-Variable -Name "ARC" -value ([string]"ARC")
Set-Variable -Name "AGC" -value ([string]"AGC")
Set-Variable -Name "oneThousandTwoHundred" -value ([uint32]1200)
Set-Variable -Name "twoThousandEightHundred" -value ([uint32]2800)
Set-Variable -Name "one" -value ([uint32]1)
$rating = @(
    [PSCustomObject]@{ threshold = $oneThousandTwoHundred; contest = $ABC }
    [PSCustomObject]@{ threshold = $twoThousandEightHundred; contest = $ARC }
)
if ($rating |
    Where-Object { $_.threshold -gt $R } |
    Select-Object -First $one) {
    Write-Host ($rating |
        Where-Object { $_.threshold -gt $R } |
        Select-Object -First $one).contest
}
else {
    Write-Host $AGC
}
exit 0