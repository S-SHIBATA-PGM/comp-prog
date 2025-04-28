[int] $A, [int] $B = [Console]::ReadLine().Split(" ")
Set-Variable -Name one -Value 1 -Option Constant
Set-Variable -Name three -Value 3 -Option Constant
Set-Variable -Name no -Value -1 -Option Constant
if ($A -eq $B) {
    Write-Host $no
}
else {
    for ([int] $i = $one; $i -lt $three + $one; $i++) {
        if ($i -ne $A -and $i -ne $B) {
            Write-Host $i
            break
        }
    }
}
exit 0