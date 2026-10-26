$S = [Console]::ReadLine()
Set-Variable -Name "e" -Value ([string]"e") -Option Constant
Set-Variable -Name "r" -Value ([string]"r") -Option Constant
Set-Variable -Name "er" -Value ([string]"er") -Option Constant
if ($S.EndsWith($e)) {
    Write-Host ([string]::Concat($S, $r))
}
else {
    Write-Host ([string]::Concat($S, $er))
}
exit 0