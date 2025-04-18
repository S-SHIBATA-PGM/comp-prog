[string] $S > $null
Set-Variable -Name num -Value 12 -Option Constant
[int] $cnt = 0
for ([int]$i = 1; $i -lt $num + 1; $i++) {
    $S = [Console]::ReadLine()
    if ($S.Length -eq $i) {
        $cnt++
    }
}
Write-Host $cnt