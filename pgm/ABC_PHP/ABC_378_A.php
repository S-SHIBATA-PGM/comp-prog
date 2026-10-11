<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const two = 2;
const zero = 0;
$A = explode(space, trim($line));
$cnt = array_count_values($A);
$sum = zero;
foreach ($cnt as $c) {
    $sum += intdiv($c, two);
}
echo $sum . PHP_EOL;
exit(0);
