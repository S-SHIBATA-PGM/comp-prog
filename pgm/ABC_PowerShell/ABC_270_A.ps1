Function checkSolved([int[]] $arr, [int]$p) {
    if ($p -eq 1) {
        $arr[1]++
    }
    elseif ($p -eq 2) {
        $arr[2]++
    }
    elseif ($p -eq 3) {
        $arr[1]++
        $arr[2]++
    }
    elseif ($p -eq 4) {
        $arr[3]++;
    }
    elseif ($p -eq 5) {
        $arr[1]++;
        $arr[3]++;
    }
    elseif ($p -eq 6) {
        $arr[2]++;
        $arr[3]++;
    }
    elseif ($p -eq 7) {
        $arr[1]++;
        $arr[2]++;
        $arr[3]++;
    }
}
$A, $B = [int[]][Console]::ReadLine().Split()
[int[]] $Test = New-Object int[] 4
checkSolved $Test $A
checkSolved $Test $B
[int]$point = 0
@(1..4) | ForEach-Object {
    if (0 -lt $Test[$_]) {
        $point += $_;
        if ($_ -eq 3) {
            $point += 1;
        }
    }
}
Write-Host $point
exit 0