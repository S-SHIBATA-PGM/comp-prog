$ABCD = [int[]](([string][Console]::ReadLine()).Split(" "))
Set-Variable -name Yes -value "Yes" -option constant
Set-Variable -name No -value "No" -option constant
$A = $ABCD[0]
$B = $ABCD[1]
$C = $ABCD[2]
$d = $ABCD[3]
$cards = @(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
$cards[$A - 1]++
$cards[$B - 1]++
$cards[$C - 1]++
$cards[$D - 1]++
$threeCards = 0
$pairs = 0
for ($i = 0; $i -lt $cards.Length; $i++) {
    if ($cards[$i] -eq 3) {
        $threeCards++
        break
    }
    elseif ($cards[$i] -eq 2) {
        $pairs++
    }
}
$condition = ($threeCards -eq 1 -or $pairs -eq 2)
&({ Write-Host $Yes }, { Write-Host $No })[!$condition]