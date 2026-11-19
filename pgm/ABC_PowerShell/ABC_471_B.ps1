$N = [uint32][Console]::ReadLine()
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$cnt = New-Object 'System.Collections.Generic.Dictionary[string, uint32]'
[uint32]$max = $zero
for ([uint32]$i = $zero; $i -lt $N; $i++) {
    $str = [Console]::ReadLine().ToLowerInvariant()
    if ($cnt.ContainsKey($str)) {
        $cnt[$str] += $one
    }
    else {
        $cnt[$str] = $one
    }
    if ($cnt[$str] -gt $max) {
        $max = $cnt[$str]
    }
}
Write-Host $max
exit 0