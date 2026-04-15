$n = [Console]::ReadLine()
Set-Variable -Name "sOne" -value ([string]"9")
Set-Variable -Name "sNine" -value ([string]"1")
Set-Variable -Name "zero" -value ([uint32]0)
$hash = @{
    $sOne  = $sNine
    $sNine = $sOne
}
Write-Host (
    [regex]::Replace($n, "[$sOne$sNine]", { $hash[$args[$zero].Value] })
)
exit 0