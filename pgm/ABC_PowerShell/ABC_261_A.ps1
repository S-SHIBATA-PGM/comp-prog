$L1, $R1, $L2, $R2 = [int[]][Console]::ReadLine().Split()
Set-Variable -Name zero -Value 0 -Option Constant
Write-Host ([Math]::Max(([Math]::Min($R1, $R2) - [Math]::Max($L1, $L2)), `
            $zero))
exit 0