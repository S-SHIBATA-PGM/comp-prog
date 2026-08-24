$S = [Console]::ReadLine()
Set-Variable -Name "Yes" -Value ([string]"Yes") -Option Constant
Set-Variable -Name "No" -Value ([string]"No") -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
if ([System.Linq.Enumerable]::All(
        [char[]]$S, [Func[char, bool]] { param($c) $c -ceq $S[$zero] })) {
    Write-Host $Yes
}
else {
    Write-Host $No
}
exit 0