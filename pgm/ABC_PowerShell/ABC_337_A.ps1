$N = [int][console]::ReadLine()
$line = ""
$X = New-Object int[] $N
$Y = New-Object int[] $N
for ([int] $i = 0; $null -ne ($line = [Console]::ReadLine()); $i++) {
    $X[$i] = $line.Split(" ")[0]
    $Y[$i] = $line.Split(" ")[1]
}
$t = ($X | Measure-Object -Sum).Sum
$a = ($Y | Measure-Object -Sum).Sum
Set-Variable -Name Takahashi -Value "Takahashi" -Option Constant
Set-Variable -Name Aoki -Value "Aoki" -Option Constant
Set-Variable -Name Draw -Value "Draw" -Option Constant
if ($t -gt $a) {
    Write-Host $Takahashi
}
elseif ($t -eq $a) {
    Write-Host $Draw
}
else {
    Write-Host $Aoki
}
exit 0