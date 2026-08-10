$X = [uint32][Console]::ReadLine()
Set-Variable -Name "HelloWorld" -value ([string]"HelloWorld") -Option Constant
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
Write-Host $HelloWorld.Remove($X - $one, $one)
exit 0