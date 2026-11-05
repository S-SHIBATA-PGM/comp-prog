Set-Variable -Name "o" -Value ([string]"o") -Option Constant
Set-Variable -Name "one" -Value ([uint32]1) -Option Constant
Set-Variable -Name "five" -Value ([uint32]5) -Option Constant
Set-Variable -Name "zero" -Value ([uint32]0) -Option Constant
$grid = @()
for ([uint32]$i = $zero; $i -lt $five; $i++) {
    $grid += [string][Console]::ReadLine().Trim()
}
$minAdd = $five + $one
for ([uint32]$i = $zero; $i -lt $five; $i++) {
    $rowStr = $grid[$i]
    $oCount = [uint32]((
            [System.Text.RegularExpressions.Regex]::Matches($rowStr, $o)).Count)
    $need = $five - $oCount
    if ($need -lt $minAdd) { $minAdd = $need }
}
for ([uint32]$j = $zero; $j -lt $five; $j++) {
    $oCount = $zero
    for ([uint32]$i = $zero; $i -lt $five; $i++) {
        if ($grid[$i][$j] -eq 'o') {
            $oCount++
        }
    }
    $need = $five - $oCount
    if ($need -lt $minAdd) { $minAdd = $need }
}
$oCountDiag1 = $zero
for ([uint32]$i = $zero; $i -lt $five; $i++) {
    if ($grid[$i][$i] -eq 'o') {
        $oCountDiag1++
    }
}
$needDiag1 = $five - $oCountDiag1
if ($needDiag1 -lt $minAdd) { $minAdd = $needDiag1 }
$oCountDiag2 = $zero
for ([uint32]$i = $zero; $i -lt $five; $i++) {
    $j = $five - 1 - $i
    if ($grid[$i][$j] -eq 'o') {
        $oCountDiag2++
    }
}
$needDiag2 = $five - $oCountDiag2
if ($needDiag2 -lt $minAdd) { $minAdd = $needDiag2 }
Write-Host $minAdd
exit 0