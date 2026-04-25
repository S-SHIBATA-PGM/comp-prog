$n = [Console]::ReadLine()
Set-Variable -Name "sOne" -value ([string]"9") -Option Constant
Set-Variable -Name "sNine" -value ([string]"1") -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$hash = @{
    $sOne  = $sNine
    $sNine = $sOne
}
Write-Host (
    [regex]::Replace($n, "[$sOne$sNine]", { $hash[$args[$zero].Value] })
)
exit 0