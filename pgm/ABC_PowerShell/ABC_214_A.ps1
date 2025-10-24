$N = [int][Console]::ReadLine()
Set-Variable -Name problem4 -Value 4 -Option Constant
Set-Variable -Name problem6 -Value 6 -Option Constant
Set-Variable -Name problem8 -Value 8 -Option Constant
$m = [ordered]@{}
$m["125"] = $problem4
$m["211"] = $problem6
$m["214"] = $problem8
foreach ($key in $m.Keys) {
    if ([int]$key -ge $N) {
        Write-Host $m[$key]
        break
    }
}
exit 0