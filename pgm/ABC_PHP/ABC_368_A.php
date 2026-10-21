<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[, $K] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const zero = 0;
$A = array_map('intval', explode(space, trim($line)));

function reverseArray(array &$arr, int $start, int $end): void
{
    $i = $start;
    $j = $end - one;
    while ($i < $j) {
        $keep = $arr[$i];
        $arr[$i] = $arr[$j];
        $arr[$j] = $keep;
        $i++;
        $j--;
    }
}

reverseArray($A, zero, count($A));
reverseArray($A, zero, $K);
reverseArray($A, $K, count($A));
echo implode(space, $A) . PHP_EOL;
exit(0);
