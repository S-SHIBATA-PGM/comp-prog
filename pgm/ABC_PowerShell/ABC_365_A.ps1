[int] $Y = [Console]::ReadLine()
Set-Variable -Name Year -Value 365 -Option Constant
Set-Variable -Name LeapYear -Value 366 -Option Constant
if ($Y % 4 -ne 0) {
    Write-Host $Year
}
elseif ($Y % 4 -eq 0 -and $Y % 100 -ne 0) {
    Write-Host $LeapYear
}
elseif ($Y % 100 -eq 0 -and $Y % 400 -ne 0) {
    Write-Host $Year
}
else {
    Write-Host $LeapYear
}