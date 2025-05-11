$A, $B = [int[]][Console]::ReadLine().Split(" ");
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
# 右、左
Set-Variable -Name drn -Value 2 -Option Constant
$dy = New-Object "int[]" $drn
$dx = New-Object "int[]" $drn
$dy = @(0, 0)
$dx = @(1, -1)
Set-Variable -Name H -Value 3 -Option Constant
Set-Variable -Name W -Value 3 -Option Constant
$Nine = @(@(1, 2, 3), @(4, 5, 6), @(7, 8, 9), @(5, 5, 5))
$breakFlg = $false
$adjacent = $No
@(0..($H - 1)) | ForEach-Object {
    $y = $_
    if ($breakFlg) {
        return
    }
    @(0..($W - 1)) | ForEach-Object {
        $x = $_
        if ($breakFlg) {
            return
        }
        if ($Nine[$y][$x] -eq $A) {
            @(0..($drn - 1)) | ForEach-Object {
                $k = $_
                if ($breakFlg) {
                    return
                }
                $ny = $y + $dy[$k]
                $nx = $x + $dx[$k]
                if ($ny -lt 0 -or $H -le $ny -or $nx -lt 0 -or $W -le $nx) {
                }
                elseif ($Nine[$ny][$nx] -eq $B) {
                    $breakFlg = $true
                    $adjacent = $Yes
                    $adjacent > $null
                }
            }
        }
    }
}
Write-Host $adjacent
exit 0