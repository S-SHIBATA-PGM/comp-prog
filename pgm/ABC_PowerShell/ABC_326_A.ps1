$X, $Y = [int[]][Console]::ReadLine().Split(" ")
Set-Variable -Name two -Value 2 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
if ($X -lt $Y -and $Y - $X -le $two) {
    $Yes
}
elseif ($X -gt $Y -and $X - $Y -le $three) {
    $Yes
}
else {
    $No
}
exit 0