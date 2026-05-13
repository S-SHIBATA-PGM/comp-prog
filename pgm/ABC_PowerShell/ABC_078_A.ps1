$X, $Y = [string[]][Console]::ReadLine().Split()
Set-Variable -Name "sixteen" -value ([uint32]16) -Option Constant
Set-Variable -Name "lt" -value ([string]"<") -Option Constant
Set-Variable -Name "gt" -value ([string]">") -Option Constant
Set-Variable -Name "eq" -value ([string]"=") -Option Constant
if ([Convert]::ToInt32($X, $sixteen) -lt [Convert]::ToInt32($Y, $sixteen)) {
    Write-Host $lt
}
elseif ([Convert]::ToInt32($X, $sixteen) -gt [Convert]::ToInt32($Y, $sixteen)) {
    Write-Host $gt
}
else {
    Write-Host $eq
}
exit 0