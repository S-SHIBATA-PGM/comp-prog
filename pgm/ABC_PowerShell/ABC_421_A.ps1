$N = [uint32][Console]::ReadLine()
$S = [string[]]::new($N)
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
for ($i = $zero; $i -lt $N; $i++) {
    $S[$i] = [Console]::ReadLine()
}
$arr = [string[]][Console]::ReadLine().Split()
$X = [uint32]$arr[$zero]
$Y = $arr[$one]
if ($S[$X - $one] -ceq $Y) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0