[char[]]$N = [Console]::ReadLine().ToCharArray()
Set-Variable -Name Yes -Value "Yes" -Option Constant
Set-Variable -Name No -Value "No" -Option Constant
Set-Variable -Name zero -Value '0' -Option Constant
Set-Variable -Name one -Value '1' -Option Constant
Set-Variable -Name two -Value '2' -Option Constant
Set-Variable -Name three -Value '3' -Option Constant
$cnt = @{ $one = [int]$zero; $two = [int]$zero; $three = [int]$zero; }
foreach ($n in $N) {
    if ($n -eq $one) {
        $cnt[$one]++
    }
    elseif ($n -eq $two) {
        $cnt[$two]++
    }
    elseif ($n -eq $three) {
        $cnt[$three]++
    }
}
$condition =
(
    $cnt[$one] -eq [int]$one
) -and (
    $cnt[$two] -eq [int]$two
) -and (
    $cnt[$three] -eq [int]$three
)
&({ Write-Host $Yes }, { Write-Host $No })[ !$condition ]