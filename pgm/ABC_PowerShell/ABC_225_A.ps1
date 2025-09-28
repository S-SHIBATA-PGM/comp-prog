Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name zero -Value 0 -Option Constant
function factorial {
    param (
        [int] $n
    )
    if ($n -gt $zero) {
        return $n * (factorial($n - $one))
    }
    else {
        return $one
    }
}
$S = [Console]::ReadLine()
$m = @{}
($zero..($S.Length - $one)) | ForEach-Object {
    $m[$S[$_]]++
}
$divisor = $one
$m.values | ForEach-Object {
    $divisor *= factorial($_)
}
Write-Host ((factorial($S.Length)) / $divisor)
exit 0