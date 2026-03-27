$N, $K = [int[]][Console]::ReadLine().Split()
$S = [System.Text.StringBuilder]::new([Console]::ReadLine())
Set-Variable -Name "one" -value ([uint32]1) -Option Constant
$S[$K - 1] = [Char]::ToLower($S[$K - 1])
Write-Host $S.ToString()
exit 0