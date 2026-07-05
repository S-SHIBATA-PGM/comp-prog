<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const zero = 0;
$arr = explode(space, trim($line));
$N = intval($arr[zero]);
$M = intval($arr[one]);
$cnt = zero;
while ($M > zero) {
    $cnt++;
    $M = $N % $M;
}
echo $cnt . PHP_EOL;
exit(0);