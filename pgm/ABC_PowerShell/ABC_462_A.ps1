$S = [Console]::ReadLine()
Set-Variable -Name "cZero" -value ([char]'0') -Option Constant
Set-Variable -Name "cNine" -value ([char]'9') -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$len = $S.Length
$sb = [System.Text.StringBuilder]::new($len)
for ($i = $zero; $i -lt $len; $i++) {
    $c = $S[$i]
    if ($c -ge $cZero -and $c -le $cNine) {
        [void]$sb.Append($c)
    }
}
Write-Host $sb.ToString()
exit 0