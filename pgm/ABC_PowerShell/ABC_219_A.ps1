$X = [int][Console]::ReadLine()
Set-Variable -Name expert -Value "expert" -Option Constant
Set-Variable -Name forty -Value 40 -Option Constant
Set-Variable -Name seventy -Value 70 -Option Constant
Set-Variable -Name upper -Value 90 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$rank = @($zero, $forty, $seventy, $upper)
$pre = $zero
foreach ($i in @(($rank.Count - 1)..$zero)) {
    if ($X -lt $upper) {
        if ($X -ge $rank[$i]) {
                
            Write-Host ($pre - $X)
            break
        }
    }
    else {
        Write-Host $expert
        break
    }
    $pre = $rank[$i]
}
exit 0