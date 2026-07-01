$N = [uint32][Console]::ReadLine()
Set-Variable -Name "Bad" -value ([string]"Bad") -Option Constant
Set-Variable -Name "Good" -value ([string]"Good") -Option Constant
Set-Variable -Name "Great" -value ([string]"Great") -Option Constant
Set-Variable -Name "Perfect" -value ([string]"Perfect") -Option Constant
Set-Variable -Name "sixty" -value ([uint32]60) -Option Constant
Set-Variable -Name "ninety" -value ([uint32]90) -Option Constant
Set-Variable -Name "hundred" -value ([uint32]100) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$grade = New-Object 'System.Collections.Generic.SortedList[uint32, string]'
$grade.Add($zero, $Bad)
$grade.Add($sixty, $Good)
$grade.Add($ninety, $Great)
$grade.Add($hundred, $Perfect)
$matchedkey = $zero
foreach ($key in $grade.Keys | Sort-Object -Descending) {
    if ([int]$key -le $N) {
        $matchedkey = $key
        break
    }
}
Write-Host $grade[$matchedKey]
exit 0