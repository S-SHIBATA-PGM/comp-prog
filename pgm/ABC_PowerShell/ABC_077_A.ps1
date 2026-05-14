$C = [string[]]@($input)
Set-Variable -Name "YES" -value ([string]"YES") -Option Constant
Set-Variable -Name "NO" -value ([string]"NO") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Set-Variable -Name "zero" -value ([uint32]0) -Option Constant
$Rotation = [string[]]$C[($C.Count - $one)..$zero] | ForEach-Object {
    $chars = $_.ToCharArray()
    [array]::Reverse($chars)
    -join $chars
}
if ((-join $C) -eq (-join $Rotation)) {
    Write-Host YES
}
else {
    Write-Host NO
}
exit 0