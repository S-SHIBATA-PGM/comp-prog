$K = [int][Console]::ReadLine()
Set-Variable -Name A -Value "A" -Option Constant
@(0..($K - 1)) | ForEach-Object {
    Write-Host -NoNewline ([char]([byte][char]$A + $_))
}
Write-Host
exit 0