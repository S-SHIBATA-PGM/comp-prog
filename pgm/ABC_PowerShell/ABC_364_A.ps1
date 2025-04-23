[int] $N = [Console]::ReadLine()
[string[]] $S = New-Object string[] $N
for ([int] $i = 0; $i -lt $N; $i++) {
    $S[$i] = [Console]::ReadLine()
}
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name sweet -Value "sweet" -Option Constant
[int] $cnt = 0
for ([int] $i = 0; $i -lt $S.Length; $i++) {
    if ($i -ne $N - 1 -and $cnt -eq 1 -and $S[$i] -eq $sweet) {
        Write-Host No
        exit 0
    }
    elseif ($S[$i] -eq $sweet) {
        $cnt++
    }
    else {
        $cnt = 0
    }
}
Write-Host Yes
exit 0