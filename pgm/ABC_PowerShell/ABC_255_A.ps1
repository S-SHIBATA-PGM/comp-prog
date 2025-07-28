Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
$R, $C = [int[]][Console]::ReadLine().Split()
$mat = New-Object 'int[,]' $two, $two
@($zero..$one) | ForEach-Object {
    $mat[$_, $zero], $mat[$_, $one] = [int[]][Console]::ReadLine().Split()
}
Write-Host $mat[($R - $one), ($C - $one)]
exit 0