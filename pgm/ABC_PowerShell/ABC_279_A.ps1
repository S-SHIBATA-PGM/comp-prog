Set-Variable -Name v -Value "v" -Option Constant
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
$cnt = 0
[char[]][Console]::ReadLine().ToCharArray() | ForEach-Object {
    if ($_ -ceq $v) {
        $cnt += $one
    }
    else {
        $cnt += $two
    }
}
Write-Host $cnt
exit 0