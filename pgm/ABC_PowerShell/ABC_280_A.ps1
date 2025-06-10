Set-Variable -Name sharp -Value "#" -Option Constant
[Console]::ReadLine() > $null
$cnt = 0
while ($inputLine = [string][Console]::ReadLine()) {
    if ($mcs = [regex]::Matches($inputLine, "[${sharp}]")) {
        $cnt += $mcs.Count
    }
}
Write-Host $cnt