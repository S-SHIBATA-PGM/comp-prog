Set-Variable -Name "R" -Value "R" -Option Constant
Set-Variable -Name "reg" -Value "\B" -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$num = $zero
$cnt = $zero
[string][Console]::ReadLine() -split $reg | ForEach-Object {
    if ($_ -eq $R) {
        $num++
    }
    else {
        $cnt = [Math]::Max($cnt, $num)
        $num = $zero
    }
}
Write-Host ([Math]::Max($cnt, $num))
exit 0