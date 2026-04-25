$a, $b, $c, $d = [uint32[]][Console]::ReadLine().Split()
Set-Variable -Name "Yes" -value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -value ([string]"No") -Option Constant
function Diff {
    [OutputType([uint32])]
    param(
        [uint32]$x,
        [uint32]$y
    )
    return [Math]::Abs($x - $y)
}
if ((Diff $a $c) -le $d -or ((Diff $a $b) -le $d -and (Diff $b $c) -le $d)) {
    Write-Host $Yes
}
else {
    Write-Host $No  
}
exit 0