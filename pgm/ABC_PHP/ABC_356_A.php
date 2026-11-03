<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
[$N, $L, $R] = array_map('intval', explode(space, trim($line)));
$A = range(one, $N);
function reverseArray(array &$arr, int $start, int $end): void
{
    $i = $start;
    $j = $end;
    while ($i < $j) {
        $keep = $arr[$i];
        $arr[$i] = $arr[$j];
        $arr[$j] = $keep;
        $i++;
        $j--;
    }
}
reverseArray($A, $L - one, $R - one);
echo implode(space, $A) . PHP_EOL;
exit(0);
