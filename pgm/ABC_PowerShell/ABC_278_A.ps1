$N, $K = [int[]][Console]::ReadLine().Split()
$A = New-Object System.Collections.ArrayList
[int[]][Console]::ReadLine().Split() | ForEach-Object {
    $A.Add($_) > $null
}
Set-Variable -Name zero -Value 0 -Option Constant
@(0..($K - 1)) | ForEach-Object {
    $A.RemoveAt($zero)
    $A.Add($zero) > $null
}
Write-Host $A
exit 0