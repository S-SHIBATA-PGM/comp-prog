$N, $K = [int[]][Console]::ReadLine().Split()
$S = [System.Text.StringBuilder]::new([Console]::ReadLine())
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
$S[$K - $one] = [Char]::ToLower($S[$K - $one])
Write-Host $S.ToString()
exit 0