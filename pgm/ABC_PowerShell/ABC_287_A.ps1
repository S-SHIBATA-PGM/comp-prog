$N = [int][Console]::ReadLine()
Set-Variable -Name For -Value "For" -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
$most = ($N + 1) / 2
$cntFor = 0
$cntAgainst = 0
while ($inputLine = [string][Console]::ReadLine()) {
    if ($inputLine -ceq $For) {
        $cntFor++
    }
    else {
        $cntAgainst++
    }
    if ($cntFor -ge $most) {
        Write-Host $Yes
        break
    }
    elseif ($cntAgainst -ge $most) {
        Write-Host $No
        break
    }
}
exit 0