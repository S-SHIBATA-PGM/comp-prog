[Console]::ReadLine() > $null
Set-Variable -Name A -Value 'A' -Option Constant
Set-Variable -Name B -Value 'B' -Option Constant
[char[]][Console]::ReadLine().ToCharArray() | ForEach-Object -Begin {
    $cntA = 0
    $cntB = 0
    $cntC = 0
    $i = 0
    $cntA > $null
    $cntB > $null
    $cntC > $null
    $i > $null
} -Process {
    if ($_ -eq $A) {
        $cntA++
    }
    elseif ($_ -eq $B) {
        $cntB++
    }
    else {
        $cntC++
    }
    if ($cntA -gt 0 -and $cntB -gt 0 -and $cntC -gt 0) {
        Write-Host ($i + 1)
        break;
    }
    $i++
}
exit 0